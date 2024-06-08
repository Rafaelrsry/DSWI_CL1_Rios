package pe.edu.cibertec.soap_examen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pe.edu.cibertec.soap_examen.model.Medico;
import pe.edu.cibertec.soap_examen.repository.MedicoRepository;

import java.util.List;

@Service
public class MedicoService {


    @Autowired
    private MedicoRepository medicoRepository;

    public List<Medico> obtenerMedicos(){
        return medicoRepository.findAll();
    }

    public Medico obtenerMedicoPorId(Integer id){
        return medicoRepository.findById(id).orElse(null);
    }

    public Medico guardarMedico(Medico medico){
        return medicoRepository.save(medico);
    }
}
