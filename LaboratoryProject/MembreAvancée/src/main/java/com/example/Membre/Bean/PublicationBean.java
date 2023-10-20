package com.example.Membre.Bean;

import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;

import java.util.Date;

@Data
public class PublicationBean{
    private long Id;
    private String type;
    private String titre;
    private String lien;
    @Temporal(TemporalType.DATE)
    private Date date;
    private String sourcepdf;
}

