package servingwebcontent.domain;

import javax.persistence.*;

@Entity
@Table(name = "teacher")
public class Teacher {
    @Id
    @Column(name = "ID_teacher")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_teacher;

    @Column(name = "Name")
    private String name;
    @Column(name = "Surname")
    private String surname;
    @Column(name = "Lastname")
    private String lastname;
    @Column(name = "Department")
    private String department;

    public Integer getId_teacher() {
        return id_teacher;
    }

    public void setId_teacher(Integer id_teacher) {
        this.id_teacher = id_teacher;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
}
