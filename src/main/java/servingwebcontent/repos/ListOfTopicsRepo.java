package servingwebcontent.repos;

import org.springframework.data.repository.CrudRepository;
import servingwebcontent.domain.ListOfTopics;

public interface ListOfTopicsRepo extends CrudRepository<ListOfTopics, Integer> {

}
