package com.example.ejbexam.service;

import com.example.ejbexam.entity.Employee;

import java.util.List;

public interface EmployeeService {
    public List<Employee> findAll();
    public void save(Employee theEmployee);
}
