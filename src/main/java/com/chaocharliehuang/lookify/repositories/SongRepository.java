package com.chaocharliehuang.lookify.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chaocharliehuang.lookify.models.Song;

@Repository
public interface SongRepository extends CrudRepository<Song, Long> {

}
