package com.had0uken.english_education.controller;

import com.had0uken.english_education.counters.LevelCounter;
import com.had0uken.english_education.counters.PointCounter;
import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.entity.Task;
import com.had0uken.english_education.enums.Level;
import com.had0uken.english_education.service.QuestionService;
import com.had0uken.english_education.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

@EnableTransactionManagement
@Controller
@RequestMapping("/GV")
public class GrammarVocabularyController {

    final static private int AMOUNT_OF_QUESTIONS = 5;

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
    private int index = 0;
    //Max value of possible points of a test
    private int totalPoints = 0;
    //value of points got by user during a test
    private int userPoints = 0;


    @RequestMapping("/Grammar")
    public ModelAndView showGrammar() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("grammar-vocabulary-views\\\\grammar-levels-view");
        return modelAndView;
    }

    @RequestMapping("/Vocabulary")
    public ModelAndView showVocabulary() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("grammar-vocabulary-views\\\\vocabulary-levels-view");
        return modelAndView;
    }


    @RequestMapping("/Vocabulary/test")
    public ModelAndView vocabularyTasks(@RequestParam("level") String levelAtt) {
        ModelAndView modelAndView = new ModelAndView();

        Level level =
                Arrays.stream(Level.values()).filter(e -> e.toString().equals(levelAtt)).findFirst().get();
        List<Question> allQuestions = questionService.getListOfQuestions(level, "Vocabulary", "simple", 0);

        Random random = new Random();
        totalPoints = 0;
        userPoints = 0;
        while (currentQuestions.size() < AMOUNT_OF_QUESTIONS) {
            int rand = random.nextInt(allQuestions.size());
            if (!currentQuestions.contains(allQuestions.get(rand)))
                currentQuestions.add(allQuestions.get(rand));
        }
        modelAndView.addObject("amountAtt", AMOUNT_OF_QUESTIONS);
        modelAndView.addObject("typeAtt", "vocabulary");
        modelAndView.setViewName("grammar-vocabulary-views\\\\test-start-view");
        return modelAndView;
    }

    @RequestMapping("/Grammar/test")
    public ModelAndView grammarTask(@RequestParam("level") String levelAtt) {
        ModelAndView modelAndView = new ModelAndView();

        Level level =
                Arrays.stream(Level.values()).filter(e -> e.toString().equals(levelAtt)).findFirst().get();
        List<Question> allQuestions = questionService.getListOfQuestions(level, "Grammar", "simple", 0);

        Random random = new Random();
        totalPoints = 0;
        userPoints = 0;
        while (currentQuestions.size() < AMOUNT_OF_QUESTIONS) {
            int rand = random.nextInt(allQuestions.size());
            if (!currentQuestions.contains(allQuestions.get(rand)))
                currentQuestions.add(allQuestions.get(rand));
        }
        modelAndView.addObject("amountAtt", AMOUNT_OF_QUESTIONS);
        modelAndView.addObject("typeAtt", "grammar");
        modelAndView.setViewName("grammar-vocabulary-views\\\\test-start-view");
        return modelAndView;
    }

    @RequestMapping("/test")
    public ModelAndView test() {
        ModelAndView modelAndView = new ModelAndView();
        if (index < AMOUNT_OF_QUESTIONS) {
            modelAndView.addObject("curQuestionAtt", currentQuestions.get(index));
            modelAndView.addObject("indexAtt", index);
            modelAndView.addObject("amountAtt", AMOUNT_OF_QUESTIONS);
            modelAndView.setViewName("grammar-vocabulary-views\\\\roll-question-view");

        } else {
            index = 0;
            currentQuestions.clear();
            modelAndView.addObject("totalPointsAtt", totalPoints);
            modelAndView.addObject("userPointsAtt", userPoints);
            modelAndView.setViewName("grammar-vocabulary-views\\\\test-final-view");
        }

        return modelAndView;
    }

    @RequestMapping("/receive")
    public ModelAndView receive(@ModelAttribute("choiceAtt") Integer choice, Authentication authentication) {
        ModelAndView modelAndView = new ModelAndView();
        Question theQuestion = currentQuestions.get(index);
        totalPoints += pointCounter.getPoints(theQuestion);
        if (choice == theQuestion.getCorrectAnswer()) {
            userPoints += pointCounter.getPoints(theQuestion);
            userService.increasePoints(authentication.getName(), pointCounter.getPoints(theQuestion));
        }
        modelAndView.addObject("curQuestionAtt", currentQuestions.get(index));
        modelAndView.addObject("indexAtt", index);
        modelAndView.addObject("amountAtt", AMOUNT_OF_QUESTIONS);
        modelAndView.addObject("answerAtt", currentQuestions.get(index).getCorrectAnswer());
        index++;
        modelAndView.setViewName("grammar-vocabulary-views\\\\show-correct-result");
        return modelAndView;

    }


}
