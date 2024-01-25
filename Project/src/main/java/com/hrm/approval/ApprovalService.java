package com.hrm.approval;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hrm.attendance.AttendanceDAO;

import lombok.Data;

@Service
@Data
public class ApprovalService {
	@Autowired
	ApprovalDao dao;
	
	private final AttendanceDAO attendanceDAO;

	public int insertsign(Approval sign) {
		return dao.insertsign(sign);
	}
	public List<Approval> signList(int start) {
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("start", start);
		m.put("count", 10);
		return dao.signList(m);
	}
	public int count() {
		return dao.count();
	}
	public Approval signOne(int num) {
		return dao.signOne(num);
	}
	public List<Approval> appall(int userid){
		return dao.app(userid);
	}
	public int deleteapproval(int appnum) {
		return dao.deleteapproval(appnum);
	}
	public List<Approval> search(int userid, Date startDate, Date endDate) {
		return dao.search(userid, startDate, endDate);
	}
}