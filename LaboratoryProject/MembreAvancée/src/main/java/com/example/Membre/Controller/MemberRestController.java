package com.example.Membre.Controller;

import com.example.Membre.Entities.EnseignantChercheur;
import com.example.Membre.Entities.Etudiant;
import com.example.Membre.Entities.Membre;
import com.example.Membre.Service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1")
public class MemberRestController {
    @Autowired
    MemberService memberService;

    @RequestMapping(value = "/membres", method = RequestMethod.GET)
    public List<Membre> findMembres() {
        return memberService.findAll();
    }

    @GetMapping(value = "/membres/{id}")
    public Membre findOneMemberById(@PathVariable Long id) {
        return memberService.findMember(id);
    }

    @PostMapping(value = "/membres/enseignant")
    public Membre addMembre(@RequestBody EnseignantChercheur m) {
        return memberService.addMember(m);
    }

    @PostMapping(value = "/membres/etudiant")
    public Membre addMembre(@RequestBody Etudiant e) {
        return memberService.addMember(e);
    }

    @DeleteMapping(value = "/membres/{id}")
    public void deleteMembre(@PathVariable Long id) {
        memberService.deleteMember(id);
    }

    @PutMapping(value = "/membres/etudiant/{id}")
    public Membre updatemembre(@PathVariable Long id, @RequestBody Etudiant p) {
        p.setId(id);
        return memberService.updateMember(p);
    }

    @PutMapping(value = "/membres/enseignant/{id}")
    public Membre updateMembre(@PathVariable Long id, @RequestBody EnseignantChercheur p) {
        p.setId(id);
        return memberService.updateMember(p);
    }

    @GetMapping(value = "/membres/getByEncadtant")
    public List<Etudiant> getByEncadtant(@RequestBody EnseignantChercheur e) {
        return memberService.findEtudiantByEncadrant(e);
    }

    @PostMapping(value = "/membres/affecterEtudiantEnseignant/{id_etd}/{id_ens}")
    public void affecterEtudiantEnseignant(@PathVariable Long id_etd, @PathVariable Long id_ens) {
        memberService.affecterEtudiantEnseignant(id_etd, id_ens);
    }
}