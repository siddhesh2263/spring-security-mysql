package io.alpine;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import io.alpine.models.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	
	Optional<User> findByUsername(String username);

}
