package com.ngu.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.ngu.Model.Employee;
@Repository("employeeRepository")
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

	Employee findByUsername(String username);

	
}
