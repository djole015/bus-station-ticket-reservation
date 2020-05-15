package station.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import station.model.Carrier;

@Repository
public interface CarrierRepository extends JpaRepository<Carrier, Long> {

}
