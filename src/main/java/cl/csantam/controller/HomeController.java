package cl.csantam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import cl.csantam.model.entity.Cita;
import cl.csantam.service.CitaService;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired
	CitaService servicioCitas;
	
	@GetMapping
	public String Home( ModelMap modelo) {
		List<Cita> citas = servicioCitas.ObtenerCitas();
		
		modelo.put("citas", citas);
		return "home";
	}
	
}
