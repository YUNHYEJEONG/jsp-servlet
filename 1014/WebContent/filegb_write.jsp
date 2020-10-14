<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<HEAD>
<link href="style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<script>
function trim(str) {
    return str.replace(/^\s*|\s*$/g, ""); //정규 표현식
    // 앞에 있는 기호를 공백으로 대체하라는 정규 표현식 
}
function check() {
    with(document.filegbwrite) {
        if(!trim(name.value)) {
            alert("이름을 입력해 주세요!");
            name.focus();
            return false;
        }
        if(!trim(subject.value)) {
            alert("제목을 입력해 주세요 ");
            subject.focus();
            return false;
        }
        if(!trim(content.value)) {
            alert("내용을 입력해 주세요!");
            content.focus();
            return false;
        }
        document.filegbwrite.submit();
        //document 아래에 홈태그에 submit 하면 홈태그가 리턴됨 
    }
}

</script>

</HEAD>

<BODY>
<FORM name="filegbwrite" method="post" action="filegb_save.jsp">
<CENTER>
<table width="600" cellspacing="0" cellpadding="2">
 <tr> 
  <td colspan="2" bgcolor="#1F4F8F" height="1"></td>
 </tr>
 <tr> 
  <td colspan="2" bgcolor="#DFEDFF" height="20"  class="style1">&nbsp;&nbsp;글쓰기</td>
  <!-- &nbsp;는 공백  -->
 </tr>
 <tr> 
  <td colspan="2" bgcolor="#1F4F8F" height="1"></td>
 </tr>
 <tr> 
  <td width="124" bgcolor="#f4f4f4" class="style2">&nbsp;&nbsp;이름</td>
  <td width="494" ><input type="text" name="name" class="input_style1"></td>
 </tr>
 <tr> 
  <td colspan="2" bgcolor="#dddddd" height="1"></td>
 </tr>
 <tr> 
  <td width="124"  bgcolor="#f4f4f4" class="style2">&nbsp;&nbsp;E-mail</td>
  <td width="494" height="25"><input type="text" name="email" class="input_style1"></td>
 </tr>
 <tr> 
  <td colspan="2" bgcolor="#dddddd" height="1"></td>
 </tr>
 <tr> 
  <td width="124"  bgcolor="#f4f4f4" class="style2">&nbsp;&nbsp;제목</td>
  <td width="494" height="25"><input type="text" name="subject" size="60" maxlength="60" class="input_style2"></td>
 </tr>
 <tr> 
  <td colspan="2" bgcolor="#dddddd" height="1"></td>
 </tr>
 <tr> 
  <td width="124" height="162" bgcolor="#f4f4f4" style="padding-top:5px;" valign="top" class="style2">&nbsp;&nbsp;내용</td>
  <td width="494" valign="top"><textarea cols="65" rows="10" name="content" maxlength="2000" class="textarea_style1"></textarea></td>
 </tr>
 <tr> 
  <td colspan="2" height="1"></td>
 </tr>
 <tr> 
  <td colspan="2" height="1" bgcolor="#1F4F8F"></td>
 </tr>
 <tr> 
  <td colspan="2" height="10"></td>
 </tr>
 <tr> 
  <td colspan="2" align="right"> 
   <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr> 
     <td width="28%">&nbsp;</td>
     <td width="51%">&nbsp;</td>
     <td width="12%"><a href="filegb_show.jsp"><img src="image/cancle.gif" width="46" height="20" border="0"></a></td>
     <td width="9%"><a href="#" onClick="javascript:check(this.form);"><img src="image/ok.gif" width="46" height="20" border="0"></a></td>
    </tr>
   </table>
  </td>
 </tr>
</table>
</FORM>
</BODY>
</HTML>