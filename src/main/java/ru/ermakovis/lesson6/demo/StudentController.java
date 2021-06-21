package ru.ermakovis.lesson6.demo;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/students")
@RequiredArgsConstructor
public class StudentController {
    private final StudentRepository repository;

    @GetMapping("/findAll")
    public String findStudents(Model model) {
        model.addAttribute("students", repository.findAll());
        return "students";
    }

    @GetMapping("/add")
    public String addStudent(Model model, @RequestParam String name, @RequestParam Integer age) {
        repository.insert(Student.builder()
                .name(name)
                .age(age)
                .build());
        return findStudents(model);
    }

    public String updateStudent(Model model, @RequestParam String id, @RequestParam String name) {
        repository.findStudentByName(id).ifPresent(student -> {
            student.setName(name);
            repository.save(student);
        });
        return findStudents(model);
    }

    @GetMapping("/delete/{id}")
    public String deleteStudent(Model model, @PathVariable String id) {
        repository.deleteById(id);
        return findStudents(model);
    }
}
