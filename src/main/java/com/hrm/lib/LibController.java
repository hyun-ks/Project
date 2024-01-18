package com.hrm.lib;

	import java.io.File;
	import java.io.IOException;
	import java.util.List;
	import java.util.Random;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.util.ResourceUtils;
	import org.springframework.web.bind.annotation.DeleteMapping;
	import org.springframework.web.bind.annotation.GetMapping;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.PostMapping;
	import org.springframework.web.bind.annotation.PutMapping;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestParam;
	import org.springframework.web.bind.annotation.RequestPart;
	import org.springframework.web.bind.annotation.ResponseBody;
	import org.springframework.web.bind.annotation.SessionAttributes;
	import org.springframework.web.multipart.MultipartFile;

	import com.hrm.emp.Employee;

	@SessionAttributes("user")
	@Controller
	public class LibController {
		@Autowired
		LibService s;
		
		@ModelAttribute("user")
		public Employee getDto() {
			return new Employee();
		}
		
		@RequestMapping("/lib/list")
		public String list(@RequestParam(name="p", defaultValue = "1") int page, Model m ) {
			
			//글이 있는지 체크
			int count = s.count();
			if(count > 0) {
			
			int perPage = 10; // 한 페이지에 보일 글의 갯수
			int startRow = (page - 1) * perPage;
			
			List<Lib> LibList = s.LibList(startRow);
			
			m.addAttribute("LList", LibList);

			int pageNum = 5;
			int totalPages = count / perPage + (count % perPage > 0 ? 1 : 0); //전체 페이지 수
			
			int begin = (page - 1) / pageNum * pageNum + 1;
			int end = begin + pageNum -1;
			if(end > totalPages) {
				end = totalPages;
			}
			 m.addAttribute("begin", begin);
			 m.addAttribute("end", end);
			 m.addAttribute("pageNum", pageNum);
			 m.addAttribute("totalPages", totalPages);
			
			}
			m.addAttribute("count", count);
			return "lib/list";
		}
		
		@GetMapping("lib/content/{num}")
		public String content(@ModelAttribute("user")Employee user, @PathVariable int num, Model m) {
			Lib dto = s.LibOne(num);
			m.addAttribute("dto", dto);
			return "lib/content";
		}
		@GetMapping("lib/update/{num}")
		public String updateform(@PathVariable int num, Model m) {
			Lib dto = s.LibOne(num);
			m.addAttribute("dto", dto);
			return "lib/updateform";
		}
		@PutMapping("/lib/update")
		public String update(Lib l) {
			s.updateLib(l);
			return "redirect:list";
		}
		
		@DeleteMapping("/lib/delete")
		@ResponseBody
		public int delete(@RequestParam(name="no", defaultValue = "1") int num, Model m) {
			int i = s.deleteLib(num);
			m.addAttribute("dto", i);
			
			return i;
		}
		@GetMapping("/lib/write")
		public String writeForm(@ModelAttribute("user")Employee dto) {
			return "lib/write";
		}
		
		@PostMapping("/lib/write")
		public String write(Lib l) {
			s.insert(l);
			return "redirect:list";
		}
		
	}

