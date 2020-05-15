package station.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import station.model.Line;
import station.repository.LineRepository;

@Controller
public class LineController {
	
	@Autowired
	LineRepository lineRepository;
	
	@RequestMapping(value="findLine", method=RequestMethod.POST)
	public String findLine(
			@RequestParam("to") String arrivalCity,
			@RequestParam("departureDate") @DateTimeFormat(pattern="MM-dd-yyyy") Date departureDate,
			ModelMap modelMap) 
	{
		List<Line> lines = lineRepository.findLine(arrivalCity, departureDate);
		modelMap.addAttribute("lines", lines);
		
		return "displayLines";
	}
	
	
	  @RequestMapping("admin/showAddLines") public String showAddLine() { return
	  "addLine";
	  
	  }
	 

}
