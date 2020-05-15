package station.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import station.model.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {

}
