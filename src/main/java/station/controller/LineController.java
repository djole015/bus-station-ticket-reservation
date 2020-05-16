package station.controller;

import java.util.Date;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import station.model.Carrier;
import station.model.Line;
import station.repository.CarrierRepository;
import station.repository.LineRepository;

@Controller
public class LineController {

	@Autowired
	LineRepository lineRepository;
	
	@Autowired
	CarrierRepository carrierRepository;

	@RequestMapping(value = "/findLine", method = RequestMethod.POST)
	public String findLine(@RequestParam("to") String arrivalCity,
			@RequestParam("departureDate") @DateTimeFormat(pattern = "MM-dd-yyyy") Date departureDate,
			ModelMap modelMap) {
		List<Line> lines = lineRepository.findLine(arrivalCity, departureDate);
		modelMap.addAttribute("lines", lines);

		return "displayLines";
	}

	@RequestMapping("/admin/showAddLines")
	public String showAddLine(ModelMap modelMap) {
		List<Carrier> carriers = carrierRepository.findAll();
		
		modelMap.addAttribute("carriers", carriers);
		return "addLine";

	}
	
	@RequestMapping(value = "/admin/addLine", method = RequestMethod.POST)
	public String addLine(
			@RequestParam("to") String arrivalCity,
			@RequestParam("departureDate") @DateTimeFormat(pattern = "MM-dd-yyyy") Date departureDate,
			@RequestParam("departureTime") @DateTimeFormat(pattern = "MM-dd-yyyy HH:mm") Date departureTime,
			@RequestParam("price") Double price,
			@RequestParam("seats") Integer seatsAvail,
			@RequestParam("carrierId") Long id
			) 
		{
		
		Carrier carrier = carrierRepository.getOne(id);
		
		Line line = new Line();
		line.setArrivalCity(arrivalCity);
		line.setDepartureDate(departureDate);
		line.setDepartureTime(departureTime);
		line.setPrice(price);
		line.setNumberOfSeatsAvail(seatsAvail);
		line.setCarrier(carrier);
		
		System.out.println(line);

		lineRepository.save(line);

		return "addLineConfirmation";
	}

}
