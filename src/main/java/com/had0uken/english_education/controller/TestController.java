package com.had0uken.english_education.controller;

import com.had0uken.english_education.counters.LevelCounter;
import com.had0uken.english_education.counters.PointCounter;
import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.enums.Level;
import com.had0uken.english_education.service.QuestionService;
import com.had0uken.english_education.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@EnableTransactionManagement
@Controller
@RequestMapping("/test")
public class TestController {
    //Amount of questions for one test
    final static private int AMOUNT_OF_QUESTIONS = 20;

    //Service Questions from database
    @Autowired
    private QuestionService questionService;
    //Service users from database
    @Autowired
    private UserService userService;

    //Counter of points of a test
    @Autowired
    private PointCounter pointCounter;
    //Counter of english level according to a test
    @Autowired
    private LevelCounter levelCounter;
    //It contains random questions from database for test
    private List<Question> currentQuestions = new ArrayList<>();
    //starting index of question from currentQuestions list
    private int index = -1;
    //Max value of possible points of a test
    private int totalPoints = 0;
    //value of points got by user during a test
    private int userPoints = 0;


    @RequestMapping("/testStart")
    public String showTestView(Model model, Authentication authentication) {

        User user = userService.getUser(authentication.getName());
        if(user.getLevel()!=null)
        {
            Level level = Level.valueOf(user.getLevel());
            model.addAttribute("userLevelAtt", level.getLevel());
        }
        else model.addAttribute("userLevelAtt","");
        model.addAttribute("currentUserEntityAtt", user);
        model.addAttribute("currentUserEmail", authentication.getName());



        List<Question> allQuestions = questionService.getListOfQuestions("simple");

        Random random = new Random();
        totalPoints = 0;
        userPoints = 0;
        while (currentQuestions.size() < AMOUNT_OF_QUESTIONS) {
            int rand = random.nextInt(allQuestions.size());
            if (!currentQuestions.contains(allQuestions.get(rand)))
                currentQuestions.add(allQuestions.get(rand));
        }
        return "start-test-views/test-view";
    }

    @RequestMapping("/testing")
    public String goToTest(Model model, Authentication authentication) {
        User user = userService.getUser(authentication.getName());
        if(user.getLevel()!=null)
        {
            Level level = Level.valueOf(user.getLevel());
            model.addAttribute("userLevelAtt", level.getLevel());
        }
        else model.addAttribute("userLevelAtt","");
        model.addAttribute("currentUserEntityAtt", user);
        model.addAttribute("currentUserEmail", authentication.getName());


        index++;
        if (index < AMOUNT_OF_QUESTIONS) {
            model.addAttribute("curQuestionAtt", currentQuestions.get(index));
            model.addAttribute("amountAtt", AMOUNT_OF_QUESTIONS);
            model.addAttribute("indexAtt", index);
            return "start-test-views/roll-question-view";
        } else {
            index = -1;
            currentQuestions.clear();
            model.addAttribute("totalPointsAtt", totalPoints);
            model.addAttribute("userPointsAtt", userPoints);
            model.addAttribute("levelAtt", levelCounter.getLevelByScore(totalPoints, userPoints).getLevel());
            model.addAttribute("adviceAtt", levelCounter.getLevelByScore(totalPoints, userPoints).getDescription());
            Level level = levelCounter.getLevelByScore(totalPoints, userPoints);
            userService.setLevel(authentication.getName(), level);
            totalPoints = 0;
            userPoints = 0;
            return "start-test-views/test-final-view";
        }
    }

    @RequestMapping("/receive")
    public String receiveAnswer(@ModelAttribute("choiceAtt") Integer choice, Authentication authentication) {


        Question theQuestion = currentQuestions.get(index);

        totalPoints += pointCounter.getPoints(theQuestion);

        if (choice == theQuestion.getCorrectAnswer()) {
            userPoints += pointCounter.getPoints(theQuestion);
            userService.increasePoints(authentication.getName(), pointCounter.getPoints(theQuestion));
        }

        return "redirect:/test/testing";

    }


}