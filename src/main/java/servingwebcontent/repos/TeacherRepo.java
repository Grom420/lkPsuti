package servingwebcontent.repos;

import org.springframework.data.repository.CrudRepository;
import servingwebcontent.domain.Teacher;

public interface TeacherRepo extends CrudRepository<Teacher, Integer> {

}
