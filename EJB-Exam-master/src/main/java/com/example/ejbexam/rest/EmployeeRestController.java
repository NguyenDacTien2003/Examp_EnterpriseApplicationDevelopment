package com.example.ejbexam.rest;

import com.example.ejbexam.dao.EmployeeRepository;
import com.example.ejbexam.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class EmployeeRestController {
    private EmployeeRepository repository;

    @Autowired
    public EmployeeRestController(EmployeeRepository theEmployeeRepository) {
        repository = theEmployeeRepository;
    }

    @GetMapping("/emp")
    List<Employee> all(){
        return repository.findAll();
    }

    @PostMapping("/emp")
    Employee newEmployee(@RequestBody Employee newEmployee) {
        return repository.save(newEmployee);
    }

}