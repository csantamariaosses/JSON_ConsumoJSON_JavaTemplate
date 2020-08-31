package cl.csantam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.csantam.model.dao.CitaDao;
import cl.csantam.model.entity.Cita;

@Service
public class CitaService {
	
	@Autowired
	CitaDao citaDao;
	
	public List<Cita> ObtenerCitas(){
		return citaDao.findAll();
	}
	
}
