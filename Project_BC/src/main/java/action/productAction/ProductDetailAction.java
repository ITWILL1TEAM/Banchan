package action.productAction;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import svc.productSvc.ProductDetailService;
import svc.reviewSvc.ReviewListService;
import vo.*;

public class ProductDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("ProductDetailAction");
		
		ActionForward forward = null;
		
		// request 객체를 통해 전달받은 파라미터(product_num) 가져오기
		int product_num = Integer.parseInt(request.getParameter("product_num"));
//		int product_num = 2;

	
		
		System.out.println("detail"+product_num);
		// BoardDetailService 클래스 인스턴스 생성 후 

		ProductDetailService service = new ProductDetailService();
		
		// getArticle() 메소드 호출하여 board_num에 대한 게시물 상세 정보 리턴받기
		// -> 파라미터 : 글번호(board_num)  리턴타입 : Boardbean(article)
		BoardBean article = service.getArticle(product_num);
		ArrayList<ProductImg> productImg= service.getArticleImg(product_num);
		ArrayList<ProductImg> productDtlImg = service.getDetailImg(product_num);
		
		// 다음 페이지로 전달하기 위한 객체를(article, page) request 객체에 저장
		request.setAttribute("article", article);
		request.setAttribute("productImg", productImg);
		request.setAttribute("productDtlImg", productDtlImg);
		// ActionForward 객체를 생성하여 /product/productDetail.jsp 페이지로 포워딩
		// -> request 객체를 유지해야하므로 Dispatcher 방식으로 포워딩
		forward = new ActionForward();
		forward.setPath("/product/productDetail.jsp");
		forward.setRedirect(false); // 생략 가능
		
		return forward;
	}

}
