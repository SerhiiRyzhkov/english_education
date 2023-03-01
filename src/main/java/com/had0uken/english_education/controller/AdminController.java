package com.had0uken.english_education.controller;


import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.service.QuestionService;
import com.had0uken.english_education.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import javax.validation.Valid;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@RequestMapping("/admin")
@Controller
@EnableTransactionManagement

public class AdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private QuestionService questionService;


    @RequestMapping("/adminRef")
    public ModelAndView adminPageRedirection(){
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/admin");
        return model;
    }

    @RequestMapping(value = "/listOfUsers")
    public ModelAndView listOfUsers() {
        ModelAndView model = new ModelAndView();
        List<User> allUsers = userService.getAllUser();
        model.addObject("allUsersAtt", allUsers);
        model.setViewName("admin-views/listOfUsers");

        return model;
    }
    @RequestMapping("/addNewQuestions")
    public ModelAndView addNewQuestions() {
        ModelAndView model = new ModelAndView();
        Question question = new Question();
        model.addObject("questionAtt", question);
        model.setViewName("admin-views/add-questions-view");
        return model;
    }

    @RequestMapping("/addNewListening")
    public ModelAndView addNewListening() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin-views/add-listening-task");
        return modelAndView;
    }

    //private static String UPLOADED_FOLDER = "D://temp//";

    private static String UPLOADED_FOLDER = "src/main/webapp/resources/audio/listening/a1/21/";


    @PostMapping("/upload")
    public String singleFileUpload(@RequestParam("file") MultipartFile file,
                                   RedirectAttributes redirectAttributes) {

        System.out.println("heree!!!");
        System.out.println();

        if (file.isEmpty()) {
            redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
            System.out.println("file is empty");
            return "redirect:uploadStatus";
        }

        try {

            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
            System.out.println("heree!!!2");
            System.out.println(UPLOADED_FOLDER+""+file.getOriginalFilename());
            Files.write(path, bytes);

            redirectAttributes.addFlashAttribute("message",
                    "You successfully uploaded '" + file.getOriginalFilename() + "'");

        } catch (IOException e) {
            e.printStackTrace();
        }

        return "redirect:/admin/uploadStatus";
    }

    @GetMapping("/uploadStatus")
    public String uploadStatus() {
        return "/admin-views/uploadStatus";
    }



    @RequestMapping("/saveQuestion")
    public ModelAndView saveNewQuestion(@Valid @ModelAttribute("questionAtt") Question question,
                                        BindingResult bindingResult) {
        ModelAndView model = new ModelAndView();
        if(bindingResult.hasErrors()) {
            model.setViewName("admin-views/add-questions-view");
        }
        else {
            question.setType("text");
            question.setSourceId(0);
            questionService.save(question);
            model.setViewName("redirect:addNewQuestions");
        }
            return model;

    }
    @RequestMapping(value = "/banUser")
    public ModelAndView banUser(@RequestParam("userId") String username) {
        ModelAndView model = new ModelAndView();
        userService.banUser(username);
        model.setViewName("redirect:/admin/listOfUsers");

        return model;
    }

    @RequestMapping(value = "/unBanUser")
    public ModelAndView unBanUser(@RequestParam("userId") String username) {
        ModelAndView model = new ModelAndView();
        userService.unBanUser(username);
        model.setViewName("redirect:/admin/listOfUsers");

        return model;
    }



}
