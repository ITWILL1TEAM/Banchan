package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.AddressService;
import vo.ActionForward;
import vo.CustomerAddress;

public class ShowAddressAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("ShowAddressAction");
        
        ActionForward forward = null;
        
        HttpSession session = request.getSession();
        String customer_id = (String)session.getAttribute("sId");       
        AddressService service = new AddressService();
        ArrayList<CustomerAddress> addressList = service.getAddressList(customer_id);
        String customer_name = service.getCustomerName(customer_id);
        request.setAttribute("addressList", addressList);
        request.setAttribute("customer_name", customer_name);
        

        forward = new ActionForward();
        forward.setPath("/myPage/deliveryLocation.jsp");
        forward.setRedirect(false);
        
        return forward;
	}

}
