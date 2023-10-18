package com.example.Membre;

import com.example.Membre.Entities.Etudiant;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

import java.util.Date;

@SpringBootApplication
@EnableDiscoveryClient
public class MembreApplication {

    public static void main(String[] args) {

        SpringApplication.run(MembreApplication.class, args);
    }
}
