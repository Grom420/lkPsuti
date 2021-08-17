package servingwebcontent.domain;

import javax.persistence.*;

@Entity
@Table(name = "list_of_topics")
public class ListOfTopics {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_list;

    @Column(name = "Theme")
    private String theme;
    @Column(name = "Department")
    private String department;
    @Column(name = "ID_student")
    private Integer id_student;
    @Column(name = "ID_teacher")
    private Integer id_teacher;

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public Integer getId_list() {
        return id_list;
    }

    public void setId_list(Integer id_list) {
        this.id_list = id_list;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public Integer getId_student() {
        return id_student;
    }

    public void setId_student(Integer id_student) {
        this.id_student = id_student;
    }

    public Integer getId_teacher() {
        return id_teacher;
    }

    public void setId_teacher(Integer id_teacher) {
        this.id_teacher = id_teacher;
    }
}
