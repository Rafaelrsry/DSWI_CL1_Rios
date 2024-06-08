package pe.edu.cibertec.soap_examen.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@Entity
@Table(name = "medico")
public class Medico {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idmedico;
    @Column(name="nommedico")
    private String nommedico;
    @Column(name="apemedico")
    private String apeme;
    @Column(name="fechnacmedico")
    private Date fechnac;
}
