package ru.ermakovis.lesson6.demo;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
    @GetMapping("/hello")
    public ResponseEntity<String> helloWorlder() {
        return ResponseEntity.ok("<p>Hello, World</p>");
    }
}
