package station.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import station.dto.ReservationRequest;
import station.model.Line;
import station.model.Reservation;
import station.repository.LineRepository;
import station.service.ReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	LineRepository lineRepository;
	@Autowired
	ReservationService reservationService;

	@RequestMapping(value="/showCompleteReservation")
	public String showReservation(@RequestParam("lineId") Long lineId, ModelMap modelMap) {
		Line line = lineRepository.getOne(lineId);
		
		modelMap.addAttribute("line", line);
		
		return "completeReservation";
	}
	
	@RequestMapping(value="/completeReservation", method=RequestMethod.POST)
	public String completeReservation(ReservationRequest request, ModelMap modelMap) {
		Reservation reservation = reservationService.reserve(request);
		modelMap.addAttribute("msg", "Reservation sucessful with id " + reservation.getId());
		
		return "reservationConfirmation";
	}
}
