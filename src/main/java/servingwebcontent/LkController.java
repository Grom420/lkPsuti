package servingwebcontent;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import servingwebcontent.domain.ListOfTopics;
import servingwebcontent.domain.Student;
import servingwebcontent.repos.ListOfTopicsRepo;
import servingwebcontent.repos.StudentRepo;

import java.util.Map;

@Controller
public class LkController {
    @Autowired
    private StudentRepo studentRepo;
    @Autowired
    private ListOfTopicsRepo listOfTopicsRepo;

    @GetMapping("/")
    public String main(Map<String, Object> model){
        return "main";
    }

    @GetMapping("/requests_lk")
    public String requests(Map<String, Object> model){
        return "requests_lk";
    }

    @GetMapping("/lk")
    public String greeting(Map<String, Object> model){
        Iterable<Student> students = studentRepo.findAll();
        Iterable<ListOfTopics> listOfTopics = listOfTopicsRepo.findAll();
        model.put("lists", listOfTopics);
        model.put("student", students);
        return "lk";
    }
}
