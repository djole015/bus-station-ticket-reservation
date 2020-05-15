package station.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import station.dto.ReservationRequest;
import station.model.Line;
import station.model.Passanger;
import station.model.Reservation;
import station.repository.LineRepository;
import station.repository.PassangerRepository;
import station.repository.ReservationRepository;
import station.service.ReservationService;

@Service
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	LineRepository lineRepository;
	@Autowired
	PassangerRepository passangerRepository;
	@Autowired
	ReservationRepository reservationRepository;

	@Override
	public Reservation reserve(ReservationRequest request) {
		Passanger passanger = new Passanger();
		
		passanger.setFirstName(request.getFirstName());
		passanger.setLastName(request.getLastName());
		passanger.setEmail(request.getEmail());
		passanger.setPhone(request.getPhone());
		Passanger savedPassanger = passangerRepository.save(passanger);
		
		Long lineId = request.getLineId();
		Line line = lineRepository.getOne(lineId);
		line.setNumberOfSeatsAvail(line.getNumberOfSeatsAvail()-1);
		lineRepository.save(line);
		
		Reservation reservation = new Reservation();
		
		reservation.setLine(line);
		reservation.setPassanger(savedPassanger);
		Reservation savedReservation = reservationRepository.save(reservation);
		
		return savedReservation;
	}

}
