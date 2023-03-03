package com.had0uken.english_education.controller;


import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.entity.Task;
import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.service.QuestionService;
import com.had0uken.english_education.service.TaskService;
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
import java.net.URISyntaxException;
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

    @Autowired
    private TaskService taskService;

    private Question [] array=null;
    private int currentIndex=0;

    private Task task;


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




    @PostMapping("/upload")
    public String singleFileUpload(@RequestParam("file") MultipartFile file,
                                   RedirectAttributes redirectAttributes,

                                   @ModelAttribute("levelAtt") String level,
                                   @ModelAttribute("amountAtt") Integer amount,
                                   @ModelAttribute("nameAtt") String name
    ) throws URISyntaxException, IOException {


        Task task = new Task();
        task.setTitle(name);
        task.setLevel(level);
        task.setType("Listening");
        task.setFormat("audio");
        taskService.save(task);
        task.setName(String.valueOf(task.getId()));
        this.task=task;
        taskService.save(task);

        File pfile = new File(new File(AuthenticationRegistrationController.class.getProtectionDomain().getCodeSource().getLocation()
                .toURI()).getPath());
        String p=pfile.toString();
        p=p.substring(0,p.lastIndexOf("\\"));
        p=p.substring(0,(p.lastIndexOf("\\")+1));
        StringBuilder sb = new StringBuilder();
        sb.append(p).append("resources\\audio\\listening\\");
        sb.append(level.toLowerCase()).append("\\").append(task.getName()).append("\\");


        System.out.println(sb);
        Files.createDirectories(Paths.get(sb.toString()));



        if (file.isEmpty()) {
            redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
            System.out.println("file is empty");
            return "admin-views/add-listening-task";
        }

        try {



            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            Path path = Paths.get(sb + task.getName()+".mp3");

            Files.write(path, bytes);

            redirectAttributes.addFlashAttribute("message",
                    "You successfully uploaded '" + task.getName()+".mp3");


            array=new Question[amount];

            System.out.println(array);
            currentIndex=0;
        } catch (IOException e) {
            e.printStackTrace();
        }

        return "redirect:/admin/addListeningQuestions";
    }

    @RequestMapping("/addListeningQuestions")
    public ModelAndView addQuestions(){
        ModelAndView modelAndView = new ModelAndView();

       /* System.out.println("here0!!!");
        for(Question Q:array)
            System.out.println(Q);

        System.out.println(array[currentIndex]);*/
        array[currentIndex]=new Question();
        modelAndView.addObject("questionAtt", array[currentIndex]);
        modelAndView.addObject("indexAtt", currentIndex);
        modelAndView.addObject("amountAtt",array.length);
        System.out.println("Here!!!");
        System.out.println(array[currentIndex]);
        System.out.println(currentIndex);
        System.out.println(array.length);
        modelAndView.setViewName("admin-views/add-listening-task-questions");
        return modelAndView;
    }
    @RequestMapping("/saveLQuestions")
    public ModelAndView saveLquestions(@ModelAttribute("questionAtt") Question question,
                                       @ModelAttribute("choiceAtt") Integer choice){
        ModelAndView modelAndView = new ModelAndView();
        array[currentIndex]=question;
        array[currentIndex].setCorrectAnswer(choice);
        array[currentIndex].setLevel(task.getLevel());
        array[currentIndex].setType("Listening");
        array[currentIndex].setFormat("audio");
        array[currentIndex].setSourceId(task.getId());
        questionService.save(array[currentIndex++]);
        if(currentIndex==array.length) {
            modelAndView.setViewName("admin-views/task-added-view");
            currentIndex = 0;
            this.task=null;
        }
        else
        modelAndView.setViewName("redirect:/admin/addListeningQuestions");
        return modelAndView;
    }




    @RequestMapping("/saveQuestion")
    public ModelAndView saveNewQuestion(@Valid @ModelAttribute("questionAtt") Question question,
                                        @ModelAttribute("choiceAtt") Integer choice,
                                        BindingResult bindingResult) {
        ModelAndView model = new ModelAndView();
        if(bindingResult.hasErrors()) {
            model.setViewName("admin-views/add-questions-view");
        }
        else {
            question.setCorrectAnswer(choice);
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
