<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<SCRIPT type="text/javascript"> 

function mediaWin(img){ 
winW=840;//��â�� �ʺ� 
winH=470;//��â�� ���� 
stringa="width="+winW+",height="+winH; 
popup=window.open("","my",stringa); 
popup.document.open(); 
popup.document.write("<HTML><HEAD>"); 
popup.document.write("<TITLE>�������� ��â���� ���� ����</TITLE>"); 
popup.document.write("</HEAD><BODY  oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>"); 
popup.document.write("<embed SRC=https://www.youtube.com/embed/MYys7iLTbMA style=width:100%;height:450px;></embed>"); 
/* popup.document.write("<HR><INPUT TYPE='button' VALUE='â�ݱ�' " + 
"onClick='window.close()'>");  */
popup.document.write("</CENTER>"); 
popup.document.write("</BODY></HTML>"); 
popup.document.close(); 
} 
//  --> 
</script> 
</head>
<body>
<div>
 
<A HREF="javascript:mediaWin('a.asx')"><img alt="" src="assets/img/ttazza.jpg" width="100%;" height="100%;"></A></div>


</body>
</html>