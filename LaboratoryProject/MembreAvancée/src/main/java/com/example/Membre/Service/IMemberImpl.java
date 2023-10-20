package com.example.Membre.Service;

import com.example.Membre.Bean.PublicationBean;
import com.example.Membre.DAO.EnseignantChercheurRepository;
import com.example.Membre.DAO.EtudiantRepository;
import com.example.Membre.DAO.MemberRepository;
import com.example.Membre.DAO.MembrePubRepository;
import com.example.Membre.Entities.*;
import com.example.Membre.Proxies.PublicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class IMemberImpl implements MemberService {
    @Autowired
    MemberRepository memberRepository;
    @Autowired
    EtudiantRepository etudiantRepository;
    @Autowired
    EnseignantChercheurRepository enseignantChercheurRepository;
    @Autowired
    MembrePubRepository membrepubrepository;
    @Autowired
    PublicationService proxy;

    public Membre addMember(Membre m) {
        memberRepository.save(m);
        return m;
    }

    public void deleteMember(Long id) {
        memberRepository.deleteById(id);
    }

    public Membre updateMember(Membre m) {
        return memberRepository.saveAndFlush(m);
    }

    public Membre findMember(Long id) {
        Membre m = (Membre) memberRepository.findById(id).get();
        return m;
    }

    public List<Membre> findAll() {
        return memberRepository.findAll();
    }

    public Membre findByCin(String cin) {
        return memberRepository.findByCin(cin);
    }

    public Membre findByEmail(String email) {
        return memberRepository.findByEmail(email);
    }

    public List<Membre> findByNom(String nom) {
        return memberRepository.findByNomStartingWith(nom);
    }

    public List<Etudiant> findByDiplome(String diplome) {
        return etudiantRepository.findByDiplome(diplome);
    }
    public List<Etudiant>findByDiplomeOrderByDate(String diplome){
        return etudiantRepository.findByDiplomeOrderByDateInscriptionDesc(diplome);
    }

    public List<EnseignantChercheur> findByGrade(String grade) {
        return enseignantChercheurRepository.findByGrade(grade);
    }

    public List<EnseignantChercheur> findByEtablissement(String etablissement) {
        return enseignantChercheurRepository.findByEtablissement(etablissement);
    }
    public void  affecterEtudiantEnseignant(long id_etd,long id_ens){
        etudiantRepository.findById(id_etd).get().setEncadrant(enseignantChercheurRepository.findById(id_ens).get());
        System.out.println("Etudiant: "+ id_etd +" encadrant: "+id_ens + enseignantChercheurRepository.findById(id_ens).get().getNom());
    }
    public List<Etudiant>findEtudiantByEncadrant(EnseignantChercheur enseignantChercheur){
        return etudiantRepository.findEtudiantsByEncadrant(enseignantChercheur);
    }
    public void affecterauteurTopublication(Long idauteur, Long idpub) {
        Membre mbr= memberRepository.findById(idauteur).get();
        Membre_Publication mbs= new Membre_Publication();
        mbs.setAuteur(mbr);
        mbs.setId(new Membre_Pub_Id(idpub, idauteur));
        membrepubrepository.save(mbs);
    }
    public List<PublicationBean> findPublicationparauteur(Long idauteur) {List<PublicationBean> pubs=new ArrayList<>();
        Membre auteur= memberRepository.findById(idauteur).get();
        List< Membre_Publication>
                idpubs=membrepubrepository.findByAuteur(auteur);
        idpubs.forEach(s->{
            System.out.println(s);
            pubs.add(proxy.findPublicationById(s.getId().getPublication_id()));}
        );
        return pubs;
    }

}
