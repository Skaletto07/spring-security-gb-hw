package com.kostkin.springjsecuritygb.repositories;

import com.kostkin.springjsecuritygb.entities.Role;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long> {
}
