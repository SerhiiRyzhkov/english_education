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

    private Question[] array = null;
    private int currentIndex = 0;

    private Task task;


    @RequestMapping("/adminRef")
    public ModelAndView adminPageRedirection() {
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

    @RequestMapping("/addNewReading")
    public ModelAndView addNewReading() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin-views/add-reading-task");
        return modelAndView;
    }

    @PostMapping("/uploadReading")
    public String uploadReading(@RequestParam("file") MultipartFile file,
                                   RedirectAttributes redirectAttributes,

                                   @ModelAttribute("levelAtt") String level,
                                   @ModelAttribute("amountAtt") Integer amount,
                                   @ModelAttribute("nameAtt") String name,
                                    @ModelAttribute("readingAtt") String reading
    ) throws URISyntaxException, IOException {
        Task task = new Task();
        task.setTitle(name);
        task.setLevel(level);
        task.setType("Reading");
        task.setFormat("reading");
        taskService.save(task);
        task.setName("reading-"+level.toLowerCase()+"-"+ task.getId());
        this.task=task;
        taskService.save(task);

        File pfile = new File(new File(AuthenticationRegistrationController.class.getProtectionDomain().getCodeSource().getLocation()
                .toURI()).getPath());
        String p=pfile.toString();
        p=p.substring(0,p.lastIndexOf("\\"));
        p=p.substring(0,(p.lastIndexOf("\\")+1));
        StringBuilder sb = new StringBuilder();
        sb.append(p).append("resources\\img\\reading\\");
        sb.append(level.toLowerCase()).append("\\").append(task.getName()).append("\\");

        Files.createDirectories(Paths.get(sb.toString()));

        if (file.isEmpty()) {
            redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
            System.out.println("file is empty");

            array=new Question[amount];
            createReading(reading,task.getId(),level);
            currentIndex=0;
            return "redirect:/admin/addRLQuestions";
        }

        try {



            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            Path path = Paths.get(sb + task.getName()+".jpg");

            Files.write(path, bytes);

            redirectAttributes.addFlashAttribute("message",
                    "You successfully uploaded '" + task.getName()+".jpg");


            array=new Question[amount];

            currentIndex=0;
            createReading(reading,task.getId(),level);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return "redirect:/admin/addRLQuestions";
    }


    public void createReading(String text, Integer sourceId, String level) throws URISyntaxException, IOException {
        File pfile = new File(new File(AuthenticationRegistrationController.class.getProtectionDomain().getCodeSource().getLocation()
                .toURI()).getPath());
        String p=pfile.toString();
        p=p.substring(0,p.lastIndexOf("\\"));
        p=p.substring(0,(p.lastIndexOf("\\")+1));
        StringBuilder sb = new StringBuilder();
        sb.append(p).append("WEB-INF\\view\\reading-views\\");
        sb.append(level.toLowerCase()).append("\\").append(
                "reading.").append(level.toLowerCase()).append(".").append(sourceId).append("\\");

        Files.createDirectories(Paths.get(sb.toString()));
        try {
            File file = new File(sb+"reading-"+level.toLowerCase()+"-"+sourceId+".jsp");
            if(file.createNewFile()) {
                System.out.println("file was created!!!");
                FileWriter fileWriter = new FileWriter(file);
                fileWriter.write("<%@ taglib prefix=\"c\" uri=\"http://java.sun.com/jsp/jstl/core\" %>\n" +
                        "<%@ taglib prefix=\"spring\" uri=\"http://www.springframework.org/tags\" %>\n" +
                        "<%@ taglib prefix=\"form\" uri=\"http://www.springframework.org/tags/form\" %>\n" +
                        "\n" +
                        "<!DOCTYPE html>\n" +
                        "\n" +
                        "<html>\n" +
                        "<head>\n" +
                        "    <title>");
                fileWriter.write(task.getTitle());
                fileWriter.write("</title>\n" +
                        "</head>\n" +
                        "<body>\n" +
                        "<h1>");
                fileWriter.write(task.getLevel());
                fileWriter.write(" Reading Test</h1>\n" +
                        "<h2>");
                fileWriter.write(task.getTitle());
                fileWriter.write("</h2>\n" +
                        "<br>");
                fileWriter.write("<img src=\"<c:url value=\"/resources/img/reading/");
                fileWriter.write(level.toLowerCase());
                fileWriter.write("/reading-");
                fileWriter.write(level.toLowerCase());
                fileWriter.write("-");
                fileWriter.write(String.valueOf(task.getId()));
                fileWriter.write("/reading-");
                fileWriter.write(level.toLowerCase());
                fileWriter.write("-");
                fileWriter.write(String.valueOf(task.getId()));
                fileWriter.write(".jpg\" />\\\" alt=\"Picture\" />");
                fileWriter.write("<br>\n");
                fileWriter.write(text);
                fileWriter.write("<br>\n" +
                        "<br>\n" +
                        "<br>\n" +
                        "<br>\n" +
                        "<br>\n" +
                        "<br>\n" +
                        "<br>\n" +
                        "<br>\n" +
                        "\n" +
                        "\n" +
                        "<h2>Task:</h2>\n" +
                        "<br>\n" +
                        "<br>\n" +
                        "<form:form action=\"receive\" modelAttribute=\"tasksAtt\">\n" +
                        "    Question ${indexAtt+1}/${amountAtt}\n" +
                        "    <br>\n" +
                        "    <br>\n" +
                        "    <br>\n" +
                        "    <br>\n" +
                        "    ${curQuestionAtt.question}\n" +
                        "    <br>\n" +
                        "    <br>\n" +
                        "    Choose the correct answer:\n" +
                        "    <br>\n" +
                        "    <input type=\"radio\" value=\"1\" name=\"choiceAtt\" checked> ${curQuestionAtt.answer1}\n" +
                        "    <br>\n" +
                        "    <input type=\"radio\" value=\"2\" name=\"choiceAtt\"> ${curQuestionAtt.answer2}\n" +
                        "    <br>\n" +
                        "    <input type=\"radio\" value=\"3\" name=\"choiceAtt\"> ${curQuestionAtt.answer3}\n" +
                        "\n" +
                        "\n" +
                        "    <br>\n" +
                        "    <br>\n" +
                        "\n" +
                        "    <input type=\"submit\" value=\"OK\" checked>\n" +
                        "\n" +
                        "</form:form>\n" +
                        "\n" +
                        "</body>\n");

                fileWriter.close();
            }
                else
                System.out.println("file already exists");
        }
        catch (IOException exc) {
            System.out.println("An error: " );
            exc.printStackTrace();
        }

    }
    @PostMapping("/uploadListening")
    public String uploadListening(@RequestParam("file") MultipartFile file,
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

            currentIndex=0;
        } catch (IOException e) {
            e.printStackTrace();
        }

        return "redirect:/admin/addRLQuestions";
    }

    @RequestMapping("/addRLQuestions")
    public ModelAndView addQuestions(){
        ModelAndView modelAndView = new ModelAndView();

        array[currentIndex]=new Question();
        modelAndView.addObject("questionAtt", array[currentIndex]);
        modelAndView.addObject("indexAtt", currentIndex);
        modelAndView.addObject("amountAtt",array.length);


        modelAndView.setViewName("admin-views/add-listening-reading-task-questions");
        return modelAndView;
    }






    @RequestMapping("/saveLRQuestions")
    public ModelAndView saveLquestions(@ModelAttribute("questionAtt") Question question,
                                       @ModelAttribute("choiceAtt") Integer choice){
        ModelAndView modelAndView = new ModelAndView();
        array[currentIndex]=question;
        array[currentIndex].setCorrectAnswer(choice);
        array[currentIndex].setLevel(task.getLevel());
        array[currentIndex].setType(task.getType());
        array[currentIndex].setFormat(task.getFormat());
        array[currentIndex].setSourceId(task.getId());
        questionService.save(array[currentIndex++]);
        if(currentIndex==array.length) {
            modelAndView.setViewName("admin-views/task-added-view");
            currentIndex = 0;
            this.task=null;
        }
        else
        modelAndView.setViewName("redirect:/admin/addRLQuestions");
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
