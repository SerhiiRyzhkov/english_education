package com.had0uken.english_education.controller;


import com.had0uken.english_education.entity.Irregular;
import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.enums.Level;
import com.had0uken.english_education.service.IrregularService;
import com.had0uken.english_education.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

@EnableTransactionManagement
@Controller
@RequestMapping("/irregular")
public class IrregularController {

    @Autowired
    private UserService userService;

    private final int AMOUNT_OF_VERBS = 3;

    private List<Irregular> verbs;
    private List<Irregular> answers;

    @Autowired
    public IrregularController(IrregularService irregularService) {
        this.verbs = irregularService.getAllIrregulars();
        this.answers = new ArrayList<>();

    }

    @RequestMapping("/")
    public ModelAndView showStartView(Authentication authentication) {
        ModelAndView modelAndView = new ModelAndView();
        User user = userService.getUser(authentication.getName());
        if(user.getLevel()!=null)
        {
            Level level = Level.valueOf(user.getLevel());
            modelAndView.addObject("userLevelAtt", level.getLevel());
        }
        else modelAndView.addObject("userLevelAtt","");
        modelAndView.addObject("currentUserEntityAtt", user);
        modelAndView.addObject("currentUserEmail", authentication.getName());


        modelAndView.setViewName("irregular-views\\\\start-view");
        return modelAndView;
    }

    @RequestMapping("/showVerbs")
    public ModelAndView showVerbs(Authentication authentication) {
        ModelAndView modelAndView = new ModelAndView();
        User user = userService.getUser(authentication.getName());
        if(user.getLevel()!=null)
        {
            Level level = Level.valueOf(user.getLevel());
            modelAndView.addObject("userLevelAtt", level.getLevel());
        }
        else modelAndView.addObject("userLevelAtt","");
        modelAndView.addObject("currentUserEntityAtt", user);
        modelAndView.addObject("currentUserEmail", authentication.getName());
        modelAndView.addObject("allVerbsAtt", verbs);
        modelAndView.setViewName("irregular-views\\\\show-verbs-view");
        return modelAndView;
    }

    @RequestMapping("/practiseVerbs")
    public ModelAndView practice(Authentication authentication) {
        ModelAndView modelAndView = new ModelAndView();
        User user = userService.getUser(authentication.getName());
        if(user.getLevel()!=null)
        {
            Level level = Level.valueOf(user.getLevel());
            modelAndView.addObject("userLevelAtt", level.getLevel());
        }
        else modelAndView.addObject("userLevelAtt","");
        modelAndView.addObject("currentUserEntityAtt", user);
        modelAndView.addObject("currentUserEmail", authentication.getName());
        answers.clear();
        Random random = new Random();
        Set<Integer> set = new HashSet<>();
        while (set.size() < AMOUNT_OF_VERBS) set.add(random.nextInt(verbs.size()));

        for (Integer i : set) answers.add(verbs.get(i));
        modelAndView.addObject("verbsAtt", answers);


        modelAndView.setViewName("irregular-views\\\\practice-view");
        return modelAndView;
    }

    @RequestMapping("/check")
    public ModelAndView check(
            @RequestParam Map<String, String> allRequestParams,
            Authentication authentication


    ) {
        ModelAndView modelAndView = new ModelAndView();
        User user = userService.getUser(authentication.getName());
        if(user.getLevel()!=null)
        {
            Level level = Level.valueOf(user.getLevel());
            modelAndView.addObject("userLevelAtt", level.getLevel());
        }
        else modelAndView.addObject("userLevelAtt","");
        modelAndView.addObject("currentUserEntityAtt", user);
        modelAndView.addObject("currentUserEmail", authentication.getName());


        Map<Irregular, Boolean> map = new LinkedHashMap<>();
        for (int i = 0; i < answers.size(); i++) {

            Irregular irregular = answers.get(i);

            if (
                    (Arrays.asList(irregular.getPast().split("/")).contains(allRequestParams.get(i + "_past"))) &&
                            (Arrays.asList(irregular.getParticiple().split("/")).contains(allRequestParams.get(i + "_participle")))
            )
                map.put(irregular, true);
            else map.put(irregular, false);
        }


        modelAndView.addObject("verbsAtt", map);
        modelAndView.setViewName("irregular-views\\\\check-view");
        return modelAndView;

    }

    @RequestMapping("/next")
    public ModelAndView next() {
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("redirect:/irregular/practiseVerbs");
        return modelAndView;
    }

}
