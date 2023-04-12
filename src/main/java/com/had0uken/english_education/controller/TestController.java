package com.had0uken.english_education.controller;

import com.had0uken.english_education.functional.HeaderCreator;
import com.had0uken.english_education.functional.LevelCounter;
import com.had0uken.english_education.functional.PointCounter;
import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.enums.Level;
import com.had0uken.english_education.service.QuestionService;
import com.had0uken.english_education.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@EnableTransactionManagement
@Controller
@RequestMapping("/test")
public class TestController {


    final static private int AMOUNT_OF_QUESTIONS = 20;
    @Autowired
    private QuestionService questionService;
    @Autowired
    private UserService userService;
    @Autowired
    private PointCounter pointCounter;
    @Autowired
    private LevelCounter levelCounter;
    @Autowired
    private HeaderCreator headerCreator;
    private List<Question> currentQuestions = new ArrayList<>();
    private int index = -1;
    private int totalPoints = 0;
    private int userPoints = 0;
    private final String separator;

    public TestController() {
        this.separator= File.separator;
    }


    @RequestMapping("/testStart")
    public ModelAndView showTestView(Authentication authentication) {
        ModelAndView modelAndView = headerCreator.getModelWithHeader(authentication);

        List<Question> allQuestions = questionService.getListOfQuestions("simple");

        Random random = new Random();
        totalPoints = 0;
        userPoints = 0;
        while (currentQuestions.size() < AMOUNT_OF_QUESTIONS) {
            int rand = random.nextInt(allQuestions.size());
            if (!currentQuestions.contains(allQuestions.get(rand)))
                currentQuestions.add(allQuestions.get(rand));
        }
        modelAndView.setViewName("start-test-views" + separator + "test-view");
        return modelAndView;
    }

    @RequestMapping("/testing")
    public ModelAndView goToTest(Authentication authentication) {
        ModelAndView modelAndView = headerCreator.getModelWithHeader(authentication);


        index++;
        if (index < AMOUNT_OF_QUESTIONS) {
            modelAndView.addObject("curQuestionAtt", currentQuestions.get(index));
            modelAndView.addObject("amountAtt", AMOUNT_OF_QUESTIONS);
            modelAndView.addObject("indexAtt", index);
            modelAndView.setViewName("start-test-views" + separator + "roll-question-view");
            return modelAndView;
        } else {
            index = -1;
            currentQuestions.clear();
            modelAndView.addObject("totalPointsAtt", totalPoints);
            modelAndView.addObject("userPointsAtt", userPoints);
            modelAndView.addObject("levelAtt", levelCounter.getLevelByScore(totalPoints, userPoints).getLevel());
            modelAndView.addObject("adviceAtt", levelCounter.getLevelByScore(totalPoints, userPoints).getDescription());
            Level level = levelCounter.getLevelByScore(totalPoints, userPoints);
            userService.setLevel(authentication.getName(), level);
            totalPoints = 0;
            userPoints = 0;
            modelAndView.setViewName("start-test-views" + separator + "test-final-view");
        }
        return modelAndView;
    }

    @RequestMapping("/receive")
    public ModelAndView receiveAnswer(@ModelAttribute("choiceAtt") Integer choice, Authentication authentication) {
        ModelAndView modelAndView = headerCreator.getModelWithHeader(authentication);

        Question theQuestion = currentQuestions.get(index);

        totalPoints += pointCounter.getPoints(theQuestion);

        if (choice == theQuestion.getCorrectAnswer()) {
            userPoints += pointCounter.getPoints(theQuestion);
            userService.increasePoints(authentication.getName(), pointCounter.getPoints(theQuestion));
        }
        modelAndView.setViewName("redirect:" + separator + "test" + separator + "testing");
        return modelAndView;

    }


}