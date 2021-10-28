package action;

import java.io.*;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.*;
import com.oreilly.servlet.multipart.*;

import svc.BoardWriteProService;
import vo.*;

public class BoardWriteProAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	request.setCharacterEncoding("utf-8");//Post로 보냈음    	
 
        System.out.println("Board(현Product)WritePro - action");
        ActionForward forward = null;
        
        BoardBean boardBean = new BoardBean();
        
        
        String realFolder = "C:\\Users\\JSW\\git\\Banchan\\Project_BC\\src\\main\\webapp\\upload";//실제경로
        String path = request.getRealPath("./upload");//아 왜안대ㅐ
        String saveFolder = "/upload";
		       		      		    		    
	     		 
		 int size = 1024 * 1024 * 10;
		
		  MultipartRequest multi  = new MultipartRequest(
		    		request, //request객체
		    		realFolder, // 업로드 폴더
		    		size,// 업로드 파일 사이즈
		    		"utf-8", //업로드 파일 인코딩 타입
		    		new DefaultFileRenamePolicy()//중복 파일 처리        		    		
		    		
		    		);
        
        
        // 상품정보 받아옴
        String name = multi.getParameter("product_name");
        String Sname = multi.getParameter("Sname");
        String category = multi.getParameter("product_category")+multi.getParameter("product_category2");      
        int price = Integer.parseInt(multi.getParameter("product_price").trim());        
        int weight = Integer.parseInt(multi.getParameter("product_weight").trim());  
        int discount = Integer.parseInt(multi.getParameter("product_discount").trim());
        int stock = Integer.parseInt(multi.getParameter("product_stock").trim());
        String expiration = multi.getParameter("product_expiration_date");
        String handling = multi.getParameter("product_handling");
        String material = multi.getParameter("product_material");

        
        System.out.println(name+"|"+Sname+"|"+category+"|"+price+"|"+weight+"|"+discount+"|"+stock+"|"+expiration+"|"+handling+"|"+material);
        
        
        
        boardBean.setProduct_name(name);
        boardBean.setSname(Sname);
        boardBean.setProduct_category(category);
        boardBean.setProduct_price(price);
        boardBean.setProduct_weight(weight);
        boardBean.setProduct_discount(discount);
        boardBean.setProduct_stock(stock);
        boardBean.setProduct_expiration_date(expiration);
        boardBean.setProduct_handling(handling);
        boardBean.setProduct_material(material);       
        
        
    BoardWriteProService service = new BoardWriteProService();
        
        // 2) BoardWriteProService 인스턴스의 registArticle() 메서드 호출하여 게시물 등록 요청
        //    => 파라미터 : BoardBean 객체, 리턴타입 : boolean(isWriteSuccess)
        boolean isWriteSuccess = service.registArticle(boardBean);
        boolean isImageSuccess = false;
       
 
        // 글쓰기 결과(isWriteSuccess)를 판별 
        if(!isWriteSuccess) { // 작업 결과가 false 일 경우
            // 1) 실패 시 자바스크립트를 사용하여 "게시물 등록 실패!" 출력 후 이전페이지로 돌아가기
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('게시물 등록 실패!')");
            out.println("history.back()");
            out.println("</script>");
        } else { // 작업 결과가 true 일 경우
            // 2) 성공 시 ActionForward 객체를 통해 BoardList.bo 경로, Redirect 방식 포워딩 설정
            // ActionForward 객체를 생성하여 BoardList.bo 서블릿 주소 요청
            // => request 객체 유지 불필요, 주소 유지 불필요
            // => 새로운 요청을 발생시키므로 Redirect 방식 포워딩
        	System.out.println("product업데이트완료");
        	int productNum=0;
            
        	productNum=service.getProductNum(boardBean);//방금 쓴 글prodcutNum가져오기
        	if(productNum>0) {  
        		boolean isImgSuccess=false;
        		
        		ProductImg productimg = new ProductImg();
        		
//        		String tempSavePath=  request.getRealPath(File.separator) + "/upload/"+productNum;  //경로        		 
//        		String savePath = tempSavePath.replace('\\','/');  //구분자 리플레이스
//        		 
//        		  File targetDir = new File(savePath); 
//        		 
//        		  // 디렉토리가 없을 경우 생성
//        		  if(!targetDir.exists()) {
//        		   targetDir.mkdirs();
//        		   }         		      		    		    
//        	     		 
//        		 int size = 1024 * 1024 * 10;
//        		
//        		  MultipartRequest multi  = new MultipartRequest(
//        		    		request, //request객체
//        		    		savePath, // 업로드 폴더
//        		    		size,// 업로드 파일 사이즈
//        		    		"utf-8", //업로드 파일 인코딩 타입
//        		    		new DefaultFileRenamePolicy()//중복 파일 처리        		    		
//        		    		
//        		    		);
        		  Enumeration files = multi.getFileNames();
        		  String filestr = files.nextElement().toString();  
        		  
        		// 1) MultipartRequest 객체의 getFileNames() 메서드를 통해 
        		//    업로드 파일명에 대한 정보를 Enumeration 객체 타입으로 리턴받기        		
        		  
        		  
        		 String[] productimgarr = multi.getParameterValues("product_original_img");
        		 System.out.println(productimgarr);
        		 
        		 String[] productimgOriginalarr = multi.getParameterValues("product_original_img");
        		 System.out.println(productimgOriginalarr);
        		 
        		 String[] tmp = multi.getParameterValues("imgValue");
        		 int[] imgValArr = new int[tmp.length];
        		 for(int i =0; i<tmp.length;i++) {
        			 imgValArr[i] = Integer.parseInt(tmp[i]);//        			 
        		 }
        		 System.out.println(imgValArr);
        		 
        		 for(int i=0;i<productimgarr.length;i++) {
        			 
        			 productimg.setProduct_num(productNum);
            		 productimg.setProduct_original_img(productimgOriginalarr[i]);
            		 productimg.setProduct_img(productimgarr[i]);
            		 productimg.setProduct_img_location(imgValArr[i]);
        			 
            		 isImgSuccess = service.registImgArticle(productimg);
        		 }
        		 
        		 
//        		 String productImg = multi.getFilesystemName(filestr);
//        		 String productImgOriginal = multi.getOriginalFileName(filestr);
//        		 
//        		 productimg.setProduct_num(productNum);
//        		 productimg.setProduct_original_img(productImgOriginal);
//        		 productimg.setProduct_img(productImg);
//        		 productimg.setProduct_img_location();    	
        		
        	}       	
        	

            
            forward = new ActionForward();
            forward.setPath("ProductList.ad");
            forward.setRedirect(true);
        }


        
        
        return forward;
    }

}
