package station.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import station.model.Line;

@Repository
public interface LineRepository extends JpaRepository<Line, Long> {

	@Query("SELECT l FROM Line l WHERE "
			+ "(:to IS NULL OR l.arrivalCity = :to) AND "
			+ "(:departureDate IS NULL OR l.departureDate = :departureDate) "
			)
	List<Line> findLine(
			@Param("to") String arrivalCity, 
			@Param("departureDate") Date departureDate);

}
