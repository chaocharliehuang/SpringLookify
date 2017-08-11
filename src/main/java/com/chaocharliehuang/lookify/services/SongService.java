package com.chaocharliehuang.lookify.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.chaocharliehuang.lookify.models.Song;
import com.chaocharliehuang.lookify.repositories.SongRepository;

@Service
public class SongService {
	
	private SongRepository songRepository;
	
	public SongService(SongRepository songRepository) {
		this.songRepository = songRepository;
	}
	
	public ArrayList<Song> getAllSongs() {
		return (ArrayList<Song>) songRepository.findAll();
	}
	
	public void addSong(Song song) {
		songRepository.save(song);
	}
	
	public Song findSongById(Long id) {
		return songRepository.findOne(id);
	}
	
	public void deleteSong(Long id) {
		if (songRepository.exists(id)) {
			songRepository.delete(id);;
		}
	}
	
	public List<Song> findSongByArtist(String artist) {
		return songRepository.findByArtistContaining(artist);
	}
	
	public List<Song> findTopSongs() {
		return songRepository.findTop10ByOrderByRatingDesc();
	}
}
