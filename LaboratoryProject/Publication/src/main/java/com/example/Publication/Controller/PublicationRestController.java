package com.example.Publication.Controller;

import com.example.Publication.Entities.Publication;
import com.example.Publication.Service.PublicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1")
public class PublicationRestController {
    @Autowired
    PublicationService publicationService;
    @RequestMapping(value="/publications", method= RequestMethod.GET)
    public List<Publication> findPublications (){
        return publicationService.findAll();
    }
    @GetMapping(value="/publications/{id}")
    public Publication findOneMemberById(@PathVariable Long id){
        return publicationService.findPublication(id);
    }
    @PostMapping(value="/publications/save")
    public Publication addPublication(@RequestBody Publication p)
    {
        return publicationService.addPublication(p);
    }
    @DeleteMapping(value="/publications/{id}")
    public void deletePublication(@PathVariable Long id)
    {
        publicationService.deletePublication(id);
    }
    @PutMapping(value="/publications/update/{id}")
    public Publication updatePublication(@PathVariable Long id, @RequestBody Publication p)
    {
        p.setId(id);
        return publicationService.updatePublication(p);
    }
}