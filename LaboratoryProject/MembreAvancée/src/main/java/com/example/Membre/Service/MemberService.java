package com.example.Membre.Service;

import com.example.Membre.Entities.EnseignantChercheur;
import com.example.Membre.Entities.Etudiant;
import com.example.Membre.Entities.Membre;

import java.util.List;

public interface MemberService {
    public Membre addMember(Membre m);

    public void deleteMember(Long id);

    public Membre updateMember(Membre p);

    public Membre findMember(Long id);

    public List<Membre> findAll();

    public Membre findByCin(String cin);

    public Membre findByEmail(String email);

    public List<Membre> findByNom(String nom);

    public List<Etudiant> findByDiplome(String diplome);
    List<Etudiant>findByDiplomeOrderByDate(String diplome);

    public List<EnseignantChercheur> findByGrade(String grade);

    public List<EnseignantChercheur> findByEtablissement(String etablissement);
    public void  affecterEtudiantEnseignant(long id_etd,long id_ens);

    public List<Etudiant>findEtudiantByEncadrant(EnseignantChercheur enseignantChercheur);
}
