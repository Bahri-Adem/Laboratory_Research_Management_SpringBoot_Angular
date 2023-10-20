package com.example.Membre.Proxies;

import com.example.Membre.Bean.PublicationBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(name = "PUBLICATION-SERVICE")
public interface PublicationService{
    @GetMapping("/publications/{id}")
    public PublicationBean findPublicationById(@PathVariable(name = "id") Long id);
}