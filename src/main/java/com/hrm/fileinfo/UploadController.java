package com.hrm.fileinfo;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class UploadController {
	@Autowired
	FileinfoService s;

	@GetMapping("/filedownload/{fileid}")
	public void fileDownload(@PathVariable("fileid") int id, HttpServletResponse response, HttpServletRequest request) throws IOException {

		Fileinfo dto = s.fileOne(id);
		String path = null;
		path = request.getServletContext().getRealPath("/mainImg");
		File file = new File(path, dto.getPath());

		String fileName = new String(dto.getName().getBytes("utf-8"), "iso-8859-1");

		response.setContentType("application/octet-stream; charset=utf-8");
		response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\";");// 다운로드 받을 파일명 지정

		response.setHeader("Content-Transfer-Encoding", "binary");

		OutputStream out = response.getOutputStream();

		FileInputStream fis = null;
		try {
			fis = new FileInputStream(file);
			FileCopyUtils.copy(fis, out);
		} finally {
			if (fis != null)
				try {
					fis.close();
				} catch (IOException ex) {
				}
		}
		out.flush();
	}

	@GetMapping("file/list")
	public String list(Model m) {
		List<Fileinfo> fList = s.fileList();
		m.addAttribute("fList", fList);
		return "file/list";
	}

	@GetMapping("file/upload")
	public String form() {
		return "file/fileform";
	}

	@PostMapping("file/upload")
	public String submit(String description, MultipartFile file, Model m , HttpServletRequest request) {
		if (!file.getOriginalFilename().equals("")) {
			String fileName = upload(file, request);

			Fileinfo dto = new Fileinfo();
			dto.setName(file.getOriginalFilename());
			dto.setPath(fileName);
			dto.setFilesize(file.getSize());

			s.insertFile(dto);

			m.addAttribute("dto", dto);
		}
		return "file/result";
	}

	private String upload(MultipartFile file, HttpServletRequest request) {
		String origName = file.getOriginalFilename();
		int index = origName.lastIndexOf(".");
		String ext = origName.substring(index + 1);// 파일 확장자 저장

		Random r = new Random();
		String fileName = System.currentTimeMillis() + "_" + r.nextInt(50) + "." + ext;

		try {
			String path = request.getServletContext().getRealPath("/mainImg");
			File f = new File(path, fileName);
			file.transferTo(f);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return fileName;
	}
}
