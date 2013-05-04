package service;

import vo.Staff;
import dao.Dao;

public class NoteManageService {
	private Dao dao;
	
	public Staff getStaffInfo(Staff staff){
		return dao.getStaffInfo(staff);
	}

	public void setDao(Dao dao) {
		this.dao = dao;
	}

}
