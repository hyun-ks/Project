package com.hrm.lib;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LibService {
		@Autowired
		LibDao dao;
		public int insert(Lib b) {
			return dao.insert(b);
		}
		public List<Lib> LibList(int start) {
			Map<String, Object> m = new HashMap<String, Object>();
			m.put("start", start);
			m.put("count", 10);
			return dao.LibList(m);
		}
		public int count() {
			return dao.count();
		}
		public Lib LibOne(int num) {
			dao.addReadcount(num);
			return dao.LibOne(num);
		}
		public int updateLib(Lib dto) {
			return dao.updateLib(dto);
		}
		public int deleteLib(int num) {
			return dao.deleteLib(num);
		}
		
	}


