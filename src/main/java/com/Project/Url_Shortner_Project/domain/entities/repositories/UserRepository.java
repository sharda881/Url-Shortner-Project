package com.Project.Url_Shortner_Project.domain.entities.repositories;

import com.Project.Url_Shortner_Project.domain.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByEmail(String email);
    boolean existsByEmail(String email);
}