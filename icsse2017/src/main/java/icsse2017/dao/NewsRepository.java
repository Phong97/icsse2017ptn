package icsse2017.dao;

import org.springframework.data.repository.CrudRepository;

import icsse2017.model.News;

public interface NewsRepository extends CrudRepository<News, Integer> {

}
