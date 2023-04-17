package com.had0uken.english_education.controller;

import com.had0uken.english_education.functional.HeaderCreator;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

@EnableTransactionManagement
@Controller
@RequestMapping("/GV")
public class GrammarVocabularyController {

    final static private int AMOUNT_OF_QUESTIONS = 5;
    @Autowired
    private QuestionService questionService;
    @Autowired
    private UserService userService;
    @Autowired
    private PointCounter pointCounter;
    @Autowired
    private HeaderCreator headerCreator;
    private List<Question> currentQuestions = new ArrayList<>();
    private int index = 0;
    private int totalPoints = 0;
    private int userPoints = 0;
    private final String separator;

    public GrammarVocabularyController() {
        this.separator= File.separator;
    }


    @RequestMapping("/Grammar")
    public ModelAndView showGrammar(Authentication authentication) {
        ModelAndView modelAndView = headerCreator.getModelWithHeader(authentication);
        modelAndView.setViewName("grammar-vocabulary-views" + separator + "grammar-levels-view");
        return modelAndView;
    }

    @RequestMapping("/Vocabulary")
    public ModelAndView showVocabulary(Authentication authentication) {
        ModelAndView modelAndView = headerCreator.getModelWithHeader(authentication);
        modelAndView.setViewName("grammar-vocabulary-views" + separator + "vocabulary-levels-view");
        return modelAndView;
    }


    @RequestMapping("/Vocabulary/test")
    public ModelAndView vocabularyTasks(@RequestParam("level") String levelAtt, Authentication authentication) {
        ModelAndView modelAndView = headerCreator.getModelWithHeader(authentication);
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
        modelAndView.addObject("typeAtt", "Vocabulary");
        modelAndView.setViewName("grammar-vocabulary-views" + separator + "test-start-view");
        return modelAndView;
    }

    @RequestMapping("/Grammar/test")
    public ModelAndView grammarTask(@RequestParam("level") String levelAtt, Authentication authentication) {
        ModelAndView modelAndView = headerCreator.getModelWithHeader(authentication);
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
        modelAndView.addObject("typeAtt", "Grammar");
        modelAndView.setViewName("grammar-vocabulary-views" + separator + "test-start-view");
        return modelAndView;
    }

    @RequestMapping("/test")
    public ModelAndView test(Authentication authentication) {
        ModelAndView modelAndView = headerCreator.getModelWithHeader(authentication);

        if (index < AMOUNT_OF_QUESTIONS) {
            modelAndView.addObject("typeAtt", currentQuestions.get(index).getType());
            modelAndView.addObject("curQuestionAtt", currentQuestions.get(index));
            modelAndView.addObject("indexAtt", index);
            modelAndView.addObject("amountAtt", AMOUNT_OF_QUESTIONS);
            modelAndView.setViewName("grammar-vocabulary-views"  + separator +  "roll-question-view");

        } else {
            modelAndView.addObject("typeAtt", currentQuestions.get(index-1).getType());
            index = 0;
            currentQuestions.clear();
            modelAndView.addObject("totalPointsAtt", totalPoints);
            modelAndView.addObject("userPointsAtt", userPoints);
            double result;
            if((double)userPoints/totalPoints<0.3)result=1;
            else if((double)userPoints/totalPoints>0.7) result=3;
            else result=2;
            modelAndView.addObject("resultAtt", result);
            modelAndView.setViewName("grammar-vocabulary-views" + separator + "test-final-view");
        }

        return modelAndView;
    }

    @RequestMapping("/receive")
    public ModelAndView receive(@ModelAttribute("choiceAtt") Integer choice, Authentication authentication) {
        ModelAndView modelAndView = headerCreator.getModelWithHeader(authentication);
        modelAndView.addObject("typeAtt", currentQuestions.get(index).getType());

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
        modelAndView.setViewName("grammar-vocabulary-views" + separator + "show-correct-result");
        return modelAndView;
    }
}
