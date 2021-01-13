package restful.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import restful.demo.mapper.StudentMapper;
import restful.demo.pojo.Student;

import java.util.List;

@RestController
public class TestController {

    @Autowired(required = false)
    private StudentMapper studentMapper;

    @GetMapping("students")
    public List<Student> getAllStudent(){
        return studentMapper.getAllStudent();
    }


    @GetMapping("students/{id}")
    public Student getStudentById(@PathVariable("id")int id){
        Student studentById = studentMapper.getStudentById(id);
        return studentById;
    }


    @PostMapping("students")
    public boolean addStudent(Student student){
        return studentMapper.addStudent(student);
    }

    @PutMapping("students/{id}")
    public boolean updateStudent(@PathVariable("id")int id,@RequestParam("name")String name,
                                 @RequestParam("classes")String classes,
                                 @RequestParam("subject")String subject,
                                 @RequestParam("score")String score){
        Student studentById = studentMapper.getStudentById(id);
        studentById.setId(id);
        studentById.setName(name);
        studentById.setClasses(classes);
        studentById.setSubject(subject);
        studentById.setScore(score);
        return studentMapper.updateStudent(studentById);
    }


    @DeleteMapping("students/{id}")
    public boolean deletestudentById(@PathVariable("id")int id){
        boolean b = studentMapper.deleteStudentById(id);
        return b;
    }
}
