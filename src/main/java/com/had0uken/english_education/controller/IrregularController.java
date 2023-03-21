package com.had0uken.english_education.controller;


import com.had0uken.english_education.entity.Irregular;
import com.had0uken.english_education.service.IrregularService;
import org.springframework.beans.factory.annotation.Autowired;
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

    private final int AMOUNT_OF_VERBS = 3;

    private List<Irregular> verbs;
    private List<Irregular> answers;

    @Autowired
    public IrregularController(IrregularService irregularService) {
        this.verbs = irregularService.getAllIrregulars();
        this.answers = new ArrayList<>();

    }

    @RequestMapping("/")
    public ModelAndView showStartView() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("irregular-views\\\\start-view");
        return modelAndView;
    }

    @RequestMapping("/showVerbs")
    public ModelAndView showVerbs() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("allVerbsAtt", verbs);
        modelAndView.setViewName("irregular-views\\\\show-verbs-view");
        return modelAndView;
    }

    @RequestMapping("/practiseVerbs")
    public ModelAndView practice() {
        ModelAndView modelAndView = new ModelAndView();
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
            @RequestParam Map<String, String> allRequestParams


    ) {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("here88!!");
        System.out.println(answers);
        System.out.println("----");
        for (Map.Entry<String, String> entry : allRequestParams.entrySet()) {
            System.out.println(entry.getKey() + ":" + entry.getValue().toString());
        }

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

        for (Map.Entry<Irregular, Boolean> entry : map.entrySet()) {
            System.out.println(entry.getKey() + ":" + entry.getValue().toString());
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
