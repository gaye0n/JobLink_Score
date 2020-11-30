<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCM_NoticeViewControl.ascx.cs" Inherits="Admin_SCM_NoticeViewControl" %>

<table style="border: 1px solid #d7d7d7">
<asp:Label ID="lblNoticeError" runat="server" ForeColor="Red"></asp:Label>
</td></tr></table>   

   
<table width="98%" style="border: 1px solid #d7d7d7">
    <tr height="30px"  bgcolor="#5D7B9D"><td  colspan=4 align=center><font color="#ffffff"><b>성적 확인</b></td></tr> 
</table>
<br/> 			
			


			
<% if (lblTitle.Text != "")  { %>
<table width="50%" border="1" bordercolor="#d7d7d7">
    <tr height="30px">
        <td bgcolor="#efefef" width="25%" align=center><b> 이름 </b></td>
        <td align=left><b> &nbsp <asp:Label ID="lblTitle" runat="server"></asp:Label></b></td>  
    </tr>
</table>
<br/><br/>

<table width="50%" border="1" bordercolor="#d7d7d7">
    <tr height="30px" bgcolor="#5D7B9D"><td colspan=4 align=center><font color="#ffffff"><b>점수</b></td></tr>
    <tr height="30px">
        <td bgcolor="#efefef" width="30%" align=center><b> 국어 </b></td>
        <td bgcolor="#efefef" width="30%" align=center><b> 영어 </b></td>
        <td bgcolor="#efefef" width="30%" align=center><b> 수학 </b></td>
    </tr>

    <tr height="30px">
        <td  width="30%" align=center><b><asp:Label ID="lblkorean" runat="server"></asp:Label></b></td>
        <td  width="30%" align=center><b><asp:Label ID="lblenglish" runat="server"></asp:Label></b></td>
        <td  width="30%" align=center><b><asp:Label ID="lblmath" runat="server"></asp:Label></b></td>
    </tr>
</table>
<br/><br/>

<table width="50%" border="1" bordercolor="#d7d7d7">
    <tr height="30px">
        <td bgcolor="#efefef" width="10%" align=center><b> 합계 점수 </b></td>
        <td  width="30%" align=left><b> &nbsp <asp:Label ID="lbltotal" runat="server"></asp:Label></b></td>
    </tr>


    <tr height="30px">
        <td bgcolor="#efefef" width="10%" align=center><b> 판정 </b></td>
        <td width="30%" align=left><b> &nbsp <asp:Label ID="lblresult" runat="server"></asp:Label></b></td>
    </tr>
</table>
<br/><br/>

<table width="50%" border="1" bordercolor="#d7d7d7">
    <tr height="100px">
        <td bgcolor="#efefef" width="10%" align=center><b> 평가 </b></td>
        <td width="30%" align="left"><b><asp:Label ID="lblContent" runat="server"></asp:Label></b></td>
    </tr>
</table>
<br/><br/>



<table width="50%" border="1" bordercolor="#d7d7d7">
    <tr height="30px">
        <td bgcolor="#efefef" width="25%" align=center><b> 작성자 </b></td>
        <td align=left><b> &nbsp <asp:Label ID="lblts" runat="server"></asp:Label></b></td>  
    </tr>
</table>



<%} else { %> 
<%} %>
<br>  


<table width="50%" border="0" cellpadding="0" cellspacing="0" bgcolor="#5D7B9D" height=30>
                                        <tr><td width="80px" align=center><font color="#ffffff"><b>작성자</b></td>
                                            <td width="5px"></td>
                                            <td width="160px" align=left><font color="#ffffff">관리자</td>
                                            <td width="80px"><font color="#ffffff"><b>작성일</b></td>
                                            <td width="5px"></td>
                                            <td width="150px" align=left><font color="#ffffff"> 
					   <asp:Label ID="lblPostDate" runat="server"></asp:Label></td>
                                            <td width="80px"><font color="#ffffff"><b>조회수</b></td>
                                            <td width="5px"> </td>
                                            <td width="100px" align=left><font color="#ffffff">
                                                <asp:Label ID="lblReadCount" runat="server"></asp:Label>
                                            </td>  </tr>
</table>   



<table width=98% border="0">
		<tr><td><HR SIZE=1></td></tr>
                <tr><td align="right">
                        <asp:ImageButton ID="btnList" runat="server" ImageUrl="~/Images/list_bt.gif" OnClick="btnList_Click" />
                        <asp:ImageButton ID="btnmodify" runat="server" ImageUrl="~/Images/re_bt.gif" OnClick="btnmodify_Click" />
                        <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="~/Images/delete_bt.gif" 
                                        OnClick="btnDelete_Click" style="height: 24px" />
                </td></tr>
</table>


