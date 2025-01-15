package com.spring.keycloak.controllers;

import org.springframework.security.core.Authentication;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/api/hello")
@RestController
public class HelloController {

    @GetMapping
    public ResponseEntity<String> hello() {
        return new ResponseEntity<>(
                "Hello, World!",
                HttpStatus.OK
        );
    }

    @GetMapping("/auth")
    public Authentication auth(Authentication authentication) {
        return authentication;
    }
}
