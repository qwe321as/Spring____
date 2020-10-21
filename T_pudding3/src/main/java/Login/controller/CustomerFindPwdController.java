package Login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Login.model.Customer;
import Login.model.CustomerDao;

@Controller
public class CustomerFindPwdController {

	final String command = "/findpwd.me";
	final String getPage = "FindPwdForm";
	

	@Autowired
	CustomerDao customerDao;

	@RequestMapping(value=command , method=RequestMethod.GET)
	public String doAction() {
		return getPage; 
	}

	@RequestMapping(value=command , method=RequestMethod.POST)
	public ModelAndView doAction(Customer customer,HttpServletResponse response) throws IOException {
		
		System.out.println(customer.getCustomer_id());
		Customer bean = customerDao.getOneId(customer.getCustomer_id());
		
		ModelAndView mav = new ModelAndView();
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		
		if(bean == null) {	
			System.out.println("id�� ����");
			pw.println("<script type='text/javascript'>");
			pw.println("alert('ȸ�������� �����ϴ�.');");
			pw.println("</script>");
			pw.flush();   //��������
			return new ModelAndView(getPage);
		}																			
		else {
			System.out.println(bean.getCustomer_id());
			System.out.println(bean.getCustomer_name());
			
			if(bean.getCustomer_name().equals(customer.getCustomer_name())){//���̵�� �̸��̰����� 
				System.out.println("���̵�� �̸��� ����");
				pw.println("<script type='text/javascript'>");
		        pw.println("alert('id:' + <%=bean.getCustomer_id())%>");
		        pw.println("</script>");
		        pw.flush();   //��������
				mav.setViewName(getPage);
				return mav;
			}else {																		//�̸� ���� ��ȣ Ʋ�� �Ȱ��� length�� ���� ��
				System.out.println("���̵𰰰� �̸�Ʋ��");
				pw.println("<script type='text/javascript'>");
				pw.println("alert('�̸� Ʋ�Ƚ��ϴ�.');");
				pw.println("</script>");
				pw.flush();   //��������
				mav.setViewName(getPage);
				return mav;
			}
		}
		
		
	}
}









