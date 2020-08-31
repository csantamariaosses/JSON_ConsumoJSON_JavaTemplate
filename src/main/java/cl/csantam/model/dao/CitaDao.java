package cl.csantam.model.dao;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import cl.csantam.model.entity.Cita;

@Repository
public class CitaDao {
	
	@Value("${servicio.citas.url}")
	private String urlServicio;
	
	//RestTemplate
	@Autowired
	private RestTemplate LibreriaRestClient;
	
	@Bean
	public RestTemplate restTemplate() {
		return new RestTemplate();
	}
	//RestTemplate
	
	public List<Cita> findAll() {
		Cita[] citasArray = LibreriaRestClient.getForObject(urlServicio, Cita[].class);
		return Arrays.asList( citasArray );
	}
	

}
