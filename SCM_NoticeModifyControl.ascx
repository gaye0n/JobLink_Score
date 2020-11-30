<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCM_NoticeModifyControl.ascx.cs" Inherits="Admin_SCM_NoticeModifyControl"  %>

<script src="build/total_score.js" type="text/javascript" charset="utf-8"></script>

<link rel="stylesheet" href="build/kalendae.css" type="text/css" charset="utf-8">
	<script src="build/kalendae.js" type="text/javascript" charset="utf-8"></script>
	<script src="build/total_score.js" type="text/javascript" charset="utf-8"></script>
	<style type="text/css" media="screen">
		.kalendae .k-days span.closed {
			background:red;
		}
	</style>
	
	
	
<table width="50%" style="border: 1px solid #d7d7d7">
<tr height="30px"  bgcolor="#5D7B9D"><td  colspan=4 align=center><font color="#ffffff"><b>성적 수정</b></td></tr> 
</table>

<table width="50%" border="1" bordercolor="#d7d7d7">
	<tr height="30px">
		<td bgcolor="#efefef" width="25%" align=center><b> 이름 </b></td>
		<td align=left><b> &nbsp <asp:TextBox ID="txtTitle" runat="server" Width="40%"></asp:TextBox></b></td>  
	</tr>
</table>
<br/><br/>

<table width="50%" border="1" bordercolor="#d7d7d7">
<tr height="30px" bgcolor="#5D7B9D"><td colspan=4 align=center><font color="#ffffff"><b>점수</b></td></tr>
<tr height="30px">
    <td bgcolor="#efefef" width="30%" align="center"><b> 국어 </b></td>
    <td bgcolor="#efefef" width="30%" align="center"><b> 영어 </b></td>
    <td bgcolor="#efefef" width="30%" align="center"><b> 수학 </b></td>
</tr>

<tr height="30px">
    <td  width="30%" align="center"><b><asp:TextBox ID="txtkorean" runat="server" class="korean"></asp:TextBox></b></td>
    <td  width="30%" align="center"><b><asp:TextBox ID="txtenglish" runat="server" class="english"></asp:TextBox></b></td>
    <td  width="30%" align="center"><b><asp:TextBox ID="txtmath" runat="server" class="math" onchange="score()"></asp:TextBox></b></td>
</tr>
</table>
<br/>


<table width="50%" border="1" bordercolor="#d7d7d7">
	<tr height="30px">
		<td bgcolor="#efefef" width="10%" align=center><b> 합계 점수 </b></td>
		<td  width="30%" align=left><b> &nbsp <asp:TextBox ID="txttotal" runat="server" class="total"></asp:TextBox></b></td>
	</tr>

	<tr height="30px">
		<td bgcolor="#efefef" width="10%" align=center><b> 판정 </b></td>
		<td width="30%" align=left><b> &nbsp <asp:TextBox ID="txtresult" runat="server" class="result"></asp:TextBox></b></td>
	</tr>
</table>
<br/><br/> 
 

<table width="50%" border="1" bordercolor="#d7d7d7">
	<tr height="100px">
		<td bgcolor="#efefef" width="10%" align=center><b> 평가 </b></td>
		<td width="30%" align="left"><b><asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" Rows="6" width="98%"></asp:TextBox></b></td>
	</tr>
</table>
 <br/><br/>



 <table width="50%" border="1" bordercolor="#d7d7d7">
	<tr height="30px">
		<td bgcolor="#efefef" width="25%" align=center><b> 작성자 </b></td>
		<td align=left><b> &nbsp <asp:TextBox ID="txtts" runat="server" Width="40%"></asp:TextBox></b></td>  
	</tr>
</table>

 
 

 
 
 <table width="100%" border="0">
		<tr><td><HR SIZE=1></td></tr>
                <tr><td align="right">
                        <asp:ImageButton ID="btnSubmit" runat="server" ImageUrl="~/Images/ok_bt.gif" OnClick="btnSubmit_Click" />
                        <asp:ImageButton ID="btnCancel" runat="server" ImageUrl="~/Images/cancel_bt.gif"
                            OnClick="btnCancel_Click" />
                </td></tr>
</table>
  
 




                 
 



 

 