<%@ page import="com.sds.icto.guestbook.dao.*" %>
<%@ page import="com.sds.icto.guestbook.vo.*" %>
<%
//삭제
String no = request.getParameter( "no" );
String password = request.getParameter( "password" );

GuestbookVo vo = new GuestbookVo();
vo.setNo( Long.parseLong(no) );
vo.setPassword(password);

GuestbookDao dao = new GuestbookDao();
dao.delete(vo);

//리다이렉트
response.sendRedirect( "/guestbook" );
%>