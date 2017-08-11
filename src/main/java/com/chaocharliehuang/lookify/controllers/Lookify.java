package com.chaocharliehuang.lookify.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chaocharliehuang.lookify.models.Song;
import com.chaocharliehuang.lookify.services.SongService;

@Controller()
@RequestMapping("/")
public class Lookify {

	private final SongService songService;
	
	public Lookify(SongService songService) {
		this.songService = songService;
	}
	
	@GetMapping("")
	public String index() {
		return "index.jsp";
	}
	
	@GetMapping("/dashboard")
	public String dashboard(Model model) {
		model.addAttribute("songs", songService.getAllSongs());
		return "dashboard.jsp";
	}
	
	@GetMapping("/songs/{id}")
	public String showSong(@PathVariable("id") Long id, Model model) {
		model.addAttribute("song", songService.findSongById(id));
		return "song.jsp";
	}
	
	@GetMapping("/songs/new")
	public String newSong(@ModelAttribute("song") Song song, Model model) {
		int[] ratings = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
		model.addAttribute("ratings", ratings);
		return "new.jsp";
	}
	
	@PostMapping("/songs/new")
	public String createSong(@Valid @ModelAttribute("song") Song song,
			BindingResult result, Model model) {
		if (result.hasErrors()) {
			int[] ratings = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
			model.addAttribute("ratings", ratings);
			return "new.jsp";
		} else {
			songService.addSong(song);
			return "redirect:/dashboard";
		}
	}
	
	@GetMapping("/songs/delete/{id}")
	public String deleteSong(@PathVariable("id") Long id) {
		songService.deleteSong(id);
		return "redirect:/dashboard";
	}
}
