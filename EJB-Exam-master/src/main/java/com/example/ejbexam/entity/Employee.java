package com.example.ejbexam.entity;

import javax.persistence.*;

@Entity
@Table(name = "employees")
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    public int id;

    @Column(name = "name")
    public String name;

    @Column(name = "wage")
    public Double wage;


    public Employee(int id, String name, Double wage) {
        this.id = id;
        this.name = name;
        this.wage = wage;
    }

    public Employee(String name, Double wage) {
        this.name = name;
        this.wage = wage;
    }

    public Employee(){

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getWage() {
        return wage;
    }

    public void setWage(Double wage) {
        this.wage = wage;
    }
}