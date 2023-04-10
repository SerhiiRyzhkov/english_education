package com.had0uken.english_education.controller;


import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.entity.Task;
import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.entity.Word;
import com.had0uken.english_education.service.QuestionService;
import com.had0uken.english_education.service.TaskService;
import com.had0uken.english_education.service.UserService;

import com.had0uken.english_education.service.WordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import javax.validation.Valid;
import java.io.*;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

@RequestMapping("/admin")
@Controller
@EnableTransactionManagement

public class AdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private QuestionService questionService;
    @Autowired
    private WordService wordService;

    @Autowired
    private TaskService taskService;

    private Question[] array = null;
    private int currentIndex = 0;

    private Task task;

    private String snapShotPath;

    private String separator;

    public AdminController() throws URISyntaxException {
        this.separator=File.separator;
        File pfile = new File(new File(AuthenticationRegistrationController.class.getProtectionDomain().getCodeSource().getLocation()
                .toURI()).getPath());
        String p = pfile.toString();
        p = p.substring(0, p.lastIndexOf("\\"));
        p = p.substring(0, (p.lastIndexOf("\\") + 1));
        this.snapShotPath=p;

    }

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
    public String uploadReading(

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
        task.setName("reading-" + level.toLowerCase() + "-" + task.getId());
        this.task = task;
        taskService.save(task);


        StringBuilder sb = new StringBuilder();
        sb.append(snapShotPath).append("resources\\img\\reading\\");
        sb.append(level.toLowerCase()).append("\\").append(task.getName()).append("\\");

        Files.createDirectories(Paths.get(sb.toString()));


            array = new Question[amount];
            createReading(reading, task.getId(), level);
            currentIndex = 0;
            return "redirect:/admin/addRLQuestions";


    }


    public void createReading(String text, Integer sourceId, String level) throws URISyntaxException, IOException {

        StringBuilder sb = new StringBuilder();
        sb.append(snapShotPath).append("WEB-INF\\view\\reading-views\\");
        sb.append(level.toLowerCase()).append("\\").append(
                "reading.").append(level.toLowerCase()).append(".").append(sourceId).append("\\");

        Files.createDirectories(Paths.get(sb.toString()));
        try {
            File file = new File(sb + "reading-" + level.toLowerCase() + "-" + sourceId + ".jsp");
            if (file.createNewFile()) {
                System.out.println("file was created!!!");
                FileWriter fileWriter = new FileWriter(file);
                String jspBeginPath = snapShotPath + "\\resources\\txt\\jspBegin.txt";
                String jspEndPath = snapShotPath + "\\resources\\txt\\jspEnd.txt";
                Scanner scanner = new Scanner(new File(jspBeginPath));
                StringBuilder jspWriter = new StringBuilder();
                while (scanner.hasNextLine())
                {
                    jspWriter.append(scanner.nextLine());
                }
                jspWriter.append(text);

                scanner =new Scanner(new File(jspEndPath));

                while (scanner.hasNextLine())
                {
                    jspWriter.append(scanner.nextLine());
                }

                fileWriter.write(jspWriter.toString());

                fileWriter.close();
            } else
                System.out.println("file already exists");
        } catch (IOException exc) {
            System.out.println("An error: ");
            exc.printStackTrace();
        }

    }

    @PostMapping("/uploadListening")
    public String uploadListening(@RequestParam("file") MultipartFile file,
                                  RedirectAttributes redirectAttributes,
                                  @ModelAttribute("levelAtt") String level,
                                  @ModelAttribute("amountAtt") Integer amount,
                                  @ModelAttribute("nameAtt") String name
    ) throws IOException {

        Task task = new Task();
        task.setTitle(name);
        task.setLevel(level);
        task.setType("Listening");
        task.setFormat("audio");
        taskService.save(task);
        task.setName(String.valueOf(task.getId()));
        this.task = task;
        taskService.save(task);

        StringBuilder sb = new StringBuilder();
        sb.append(snapShotPath).append("resources\\audio\\listening\\");
        sb.append(level.toLowerCase()).append("\\").append(task.getName()).append("\\");

        Files.createDirectories(Paths.get(sb.toString()));

        if (file.isEmpty()) {
            redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
            System.out.println("file is empty");
            return "admin-views/add-listening-task";
        }

        try {
            byte[] bytes = file.getBytes();
            Path path = Paths.get(sb + task.getName() + ".mp3");

            Files.write(path, bytes);

            redirectAttributes.addFlashAttribute("message",
                    "You successfully uploaded '" + task.getName() + ".mp3");

            array = new Question[amount];

            currentIndex = 0;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:/admin/addRLQuestions";
    }

    @RequestMapping("/addRLQuestions")
    public ModelAndView addQuestions() {
        ModelAndView modelAndView = new ModelAndView();
        array[currentIndex] = new Question();
        modelAndView.addObject("questionAtt", array[currentIndex]);
        modelAndView.addObject("indexAtt", currentIndex);
        modelAndView.addObject("amountAtt", array.length);
        modelAndView.setViewName("admin-views/add-listening-reading-task-questions");
        return modelAndView;
    }


    @RequestMapping("/saveLRQuestions")
    public ModelAndView saveLquestions(@ModelAttribute("questionAtt") Question question,
                                       @ModelAttribute("choiceAtt") Integer choice) {
        ModelAndView modelAndView = new ModelAndView();
        array[currentIndex] = question;
        array[currentIndex].setCorrectAnswer(choice);
        array[currentIndex].setLevel(task.getLevel());
        array[currentIndex].setType(task.getType());
        array[currentIndex].setFormat(task.getFormat());
        array[currentIndex].setSourceId(task.getId());
        questionService.save(array[currentIndex++]);
        if (currentIndex == array.length) {
            modelAndView.setViewName("admin-views/task-added-view");
            currentIndex = 0;
            this.task = null;
        } else
            modelAndView.setViewName("redirect:/admin/addRLQuestions");
        return modelAndView;
    }


    @RequestMapping("/addWord")
    public ModelAndView addNewWord() {
        ModelAndView modelAndView = new ModelAndView();
        Word word = new Word();
        modelAndView.addObject("wordAtt", word);
        modelAndView.setViewName("admin-views/add-word-view");
        return modelAndView;
    }


    @RequestMapping("/addSpeaking")
    public ModelAndView addSpeaking() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin-views/add-speaking-view");
        return modelAndView;
    }

    @RequestMapping("/saveSpeaking")
    public ModelAndView saveSpeaking(@ModelAttribute("question1") String question1,
                                     @ModelAttribute("question2") String question2,
                                     @ModelAttribute("question3") String question3,
                                     @ModelAttribute("question4") String question4,
                                     @ModelAttribute("question5") String question5,
                                     @ModelAttribute("question6") String question6,
                                     @ModelAttribute("Topic") String Topic
    ) {
        ModelAndView modelAndView = new ModelAndView();
        List<String> list = new ArrayList<>();
        if (!question1.isEmpty()) list.add(question1);
        if (!question2.isEmpty()) list.add(question2);
        if (!question3.isEmpty()) list.add(question3);
        if (!question4.isEmpty()) list.add(question4);
        if (!question5.isEmpty()) list.add(question5);
        if (!question6.isEmpty()) list.add(question6);
        Task task1 = new Task(null, Topic, "A1", "Speaking", "no_test");
        taskService.save(task1);
        task1.setName(String.valueOf(task1.getId()));
        taskService.save(task1);
        for (String s : list) {
            Question question = new Question(s, "none", "none", "none", 1, "A1", "Speaking", "no_test", task1.getId());
            questionService.save(question);
        }
        modelAndView.setViewName("admin-views/add-speaking-view");
        return modelAndView;
    }

    @RequestMapping("/uploadWord")
    public ModelAndView uploadWord(@RequestParam("file") MultipartFile file,
                                   RedirectAttributes redirectAttributes,

                                   @ModelAttribute("word") String word,
                                   @ModelAttribute("definition") String definition,
                                   @ModelAttribute("example1") String example1,
                                   @ModelAttribute("example2") String example2,
                                   @ModelAttribute("example3") String example3,
                                   @ModelAttribute("part") String part) {
        ModelAndView modelAndView = new ModelAndView();
        Word wordObj = new Word(word, part, definition, example1, example2, example3);
        StringBuilder sb = new StringBuilder();
        sb.append(snapShotPath).append("resources\\img\\words\\");
        modelAndView.setViewName("admin-views/add-word-view");


        if (file.isEmpty()) {
            redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
            System.out.println("file is empty");

        }

        try {

            byte[] bytes = file.getBytes();
            Path path = Paths.get(sb + wordObj.getWord().toLowerCase() + ".png");

            Files.write(path, bytes);
            wordService.save(wordObj);
            redirectAttributes.addFlashAttribute("message",
                    "You successfully uploaded '" + wordObj.getWord() + ".png");

        } catch (IOException e) {
            e.printStackTrace();
        }
        return modelAndView;
    }


    @RequestMapping("/saveQuestion")
    public ModelAndView saveNewQuestion(@Valid @ModelAttribute("questionAtt") Question question,
                                        @ModelAttribute("choiceAtt") Integer choice,
                                        BindingResult bindingResult) {
        ModelAndView model = new ModelAndView();
        if (bindingResult.hasErrors()) {
            model.setViewName("admin-views/add-questions-view");
        } else {
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
