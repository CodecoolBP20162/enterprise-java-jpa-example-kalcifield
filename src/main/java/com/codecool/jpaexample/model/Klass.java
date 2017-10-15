package com.codecool.jpaexample.model;

import com.codecool.jpaexample.CCLocation;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Klass {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String name;

    @Enumerated(EnumType.STRING)
    private CCLocation location;

    @OneToMany
    private Set<Student> students = new HashSet<>();

    public Klass() {}

    public Klass(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Student> getStudents() {
        return students;
    }

    public void addStudent(Student student) {
        students.add(student);
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public CCLocation getLocation() {
        return location;
    }

    public void setLocation(CCLocation location) {
        this.location = location;
    }
}
