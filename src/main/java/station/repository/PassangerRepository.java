package station.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import station.model.Passanger;

@Repository
public interface PassangerRepository extends JpaRepository<Passanger, Long> {

}
