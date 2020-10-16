package Login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Login.model.Customer;
import Login.model.CustomerDao;


@Controller
public class CustomerFindIdController {

	final String command = "/findid.me";
	final String getPage = "FindIdForm";
	

	@Autowired
	CustomerDao customerDao;

	@RequestMapping(value=command , method=RequestMethod.GET)
	public String doAction() {
		return getPage; 
	}

	@RequestMapping(value=command , method=RequestMethod.POST)
	public ModelAndView doAction(Customer customer,HttpServletResponse response) throws IOException {

		System.out.println(customer.getCustomer_name());
		Customer bean = customerDao.getOneData(customer.getCustomer_name());
		
		ModelAndView mav = new ModelAndView();
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		
		if(bean == null) {	
			System.out.println("�̸��� ����");
			pw.println("<script type='text/javascript'>");
			pw.println("alert('ȸ�������� �����ϴ�.');");
			pw.println("</script>");
			pw.flush();   //��������
			return new ModelAndView(getPage);
		}																			
		else {			
			
			System.out.println(bean.getCustomer_name());
			System.out.println(bean.getCustomer_hpnumber());
			
			if(bean.getCustomer_hpnumber().equals(customer.getCustomer_hpnumber())){//�̸���  ��ȣ�� ������ 
				System.out.println("�̸���  ��ȣ�� ����");
				pw.println("<script type='text/javascript'>");
		        pw.println("alert(<%=bean.getCustomer_id())%>");
		        pw.println("</script>");
		        pw.flush();   //��������
				mav.setViewName(getPage);
				return mav;
			}else {																		//�̸� ���� ��ȣ Ʋ�� �Ȱ��� length�� ���� ��
				System.out.println("�̸����� ��ȣƲ��");
				pw.println("<script type='text/javascript'>");
				pw.println("alert('��ȣ Ʋ�Ƚ��ϴ�.');");
				pw.println("</script>");
				pw.flush();   //��������
				mav.setViewName(getPage);
				return mav;
			}
		}


	}
}