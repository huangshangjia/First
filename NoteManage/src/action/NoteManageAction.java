package action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import service.NoteManageService;
import util.SpringUtil;
import vo.Staff;

import com.opensymphony.xwork2.ActionSupport;

public class NoteManageAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	
	public String login()throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		String staffCode = request.getParameter("staffCode");
		String password = request.getParameter("password");
		Staff staff = new Staff();
		staff.setStaffCode(staffCode);
		staff.setStaffPwd(password);
		NoteManageService service = (NoteManageService)SpringUtil.getBean("noteManageService");
		staff = service.getStaffInfo(staff);
		if(staff==null){
			return "fail";
		}
		request.getSession().setAttribute("STAFF_INFO", staff);
		return "sucess";
    }

}
