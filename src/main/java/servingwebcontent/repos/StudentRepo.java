package servingwebcontent.repos;

import org.springframework.data.repository.CrudRepository;
import servingwebcontent.domain.Student;

public interface StudentRepo extends CrudRepository<Student, Integer> {

}
