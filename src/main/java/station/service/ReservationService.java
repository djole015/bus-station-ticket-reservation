package station.service;

import station.dto.ReservationRequest;
import station.model.Reservation;

public interface ReservationService {

	Reservation reserve(ReservationRequest request);
}
