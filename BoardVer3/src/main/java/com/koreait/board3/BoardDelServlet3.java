package com.koreait.board3;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/del")
public class BoardDelServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String iboard = request.getParameter("iboard");
		int intBoard = Integer.parseInt(iboard);
		
		BoardVO3 param = new BoardVO3();
		param.setIboard(intBoard);
		//param.setUserPK(10);
		//BoardDAO.delBoard(intBoard); //둘다 iboard값을 보내기 위함
		//리터럴 값을 넣어주는것이라 객체로 보내주는것이 좋다. 
		BoardDAO.delBoard(param); //그릇을 써서 값을 보내주는것이 더 유연한 소스이다. 
		
		response.sendRedirect("/list");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
