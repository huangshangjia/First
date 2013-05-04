package dao;

import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;

import vo.Staff;

public class Dao {
	private JdbcTemplate jdbcTemplate;
	
	public Staff getStaffInfo(Staff staff){
		String sql = "select staff_id,staff_code,staff_name,staff_pwd from staff where 1=1";
		if(staff.getStaffId()!=null && !staff.getStaffId().equals("")){
			sql += " and staff_id=" + staff.getStaffId();
		}
		if(staff.getStaffCode()!=null && !staff.getStaffCode().equals("")){
			sql += " and staff_code='" + staff.getStaffCode()+"'";
		}
		if(staff.getStaffName()!=null && !staff.getStaffName().equals("")){
			sql += " and staff_name='" + staff.getStaffName()+"'";
		}
		if(staff.getStaffPwd()!=null && !staff.getStaffPwd().equals("")){
			sql += " and staff_pwd='" + staff.getStaffPwd()+"'";
		}
		List<Map<String,String>> returnList = jdbcTemplate.queryForList(sql);
		if(returnList.size()==0){
			return null;
		}else{
			Map<String,String> map = returnList.get(0);
			staff.setStaffId(String.valueOf(map.get("staff_id")));
			staff.setStaffCode(map.get("staff_code"));
			staff.setStaffName(map.get("staff_name"));
			staff.setStaffPwd(map.get("staff_pwd"));
			
			return staff;
		}
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

}
