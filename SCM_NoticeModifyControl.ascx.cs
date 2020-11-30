using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;
using System.IO;

public partial class Admin_SCM_NoticeModifyControl : System.Web.UI.UserControl
{
   #region [1]Event Handler
    //[1]그리드..
    protected void Page_Load(object sender, EventArgs e)
    {
        //[1]스크립트
        string strAlert = @"<script>location.href='../Default.aspx';</script>";
        
        //[2]로그인 체크
        if (!Page.User.Identity.IsAuthenticated)
        {
            Response.Write(strAlert);
        }
        else
        {
            //[3]관리자만 접근가능
            if (Page.User.Identity.Name.ToLower() == "admin")
            {
                if (!IsPostBack)
                {
                    DisplayData();
                }
            }
            else
            {
                Response.Write(strAlert);                
            }
        }        
    }
    
    //수정
    protected void btnSubmit_Click(object sender, ImageClickEventArgs e)
    {
        //[1]제목과 내용 변수
        string strTitle = "";

        string strkorean = "";
        string strenglish = "";
        string strmath = "";

        string strtotal = "";
        string strresult = "";

        string strContent = "";

        string strts = "";
	                                                  
        

        //[1-1]script
        string strAlert = @"<script>alert('수정했습니다.');location.href='SCM_NoticeView.aspx?SCM_ScoreID=" 
            + Request["SCM_ScoreID"] 
            + "';</script>"; 


       
        try
        {            
            //[2]리플레이스 변환
            strTitle = txtTitle.Text;                    				

            strkorean = txtkorean.Text;
            strenglish = txtenglish.Text;
            strmath = txtmath.Text;

            strtotal = txttotal.Text;
            strresult = txtresult.Text;	

            strts = txtts.Text;	
      
            strContent = txtContent.Text 
			.Replace("\r\n", "<br />");
 

            using (Is.Notice.Bsl.Notice_RTx bsl = new Is.Notice.Bsl.Notice_RTx())
            {
                //[1]Excute
             
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ISDB"].ConnectionString);
                SqlCommand cmd = new SqlCommand("UP_ModifySCM_Score", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Title", strTitle);
                cmd.Parameters.AddWithValue("@korean", strkorean);
                cmd.Parameters.AddWithValue("@english", strenglish);
                cmd.Parameters.AddWithValue("@math", strmath);
                cmd.Parameters.AddWithValue("@total", strtotal);
                cmd.Parameters.AddWithValue("@result", strresult);
                cmd.Parameters.AddWithValue("@Content", strContent);  
                cmd.Parameters.AddWithValue("@ts", strts);

                cmd.Parameters.AddWithValue("@SCM_ScoreID", Convert.ToInt32(Request["SCM_ScoreID"]));

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            //[2]리디렉트..수차후수정
            Response.Write(strAlert);            
        }
        catch (Exception err)
        {
            //[3]Exception
            Response.Write(err.Source + " : " + err.Message);
        }
        
    }
    //취소
    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {        
        Response.Redirect("SCM_NoticeView.aspx?SCM_ScoreID=" + Request["SCM_ScoreID"]);
    }
    #endregion

    #region [2]Method
    //텍스트 박스 바인딩
    private void DisplayData()
    {
        //[1]dataset
        DataSet ds = null;
        
        try
        {
            using (Is.Notice.Bsl.Notice_RTx bsl = new Is.Notice.Bsl.Notice_RTx())
            {
                //[2]Fill
              //  ds = bsl.ViewNotice(Convert.ToInt32(Request["NoticeID"]));
                ds = SqlHelper.ExecuteDataset(ConfigurationManager.ConnectionStrings["ISDB"].ConnectionString, "UP_ViewSCM_Score", Convert.ToInt32(Request["SCM_ScoreID"]));

                //[3]Bind
                txtTitle.Text = ds.Tables[0].Rows[0]["Title"].ToString();
                txtkorean.Text = ds.Tables[0].Rows[0]["korean"].ToString();
                txtenglish.Text = ds.Tables[0].Rows[0]["english"].ToString();
                txtmath.Text = ds.Tables[0].Rows[0]["math"].ToString();
                txttotal.Text = ds.Tables[0].Rows[0]["total"].ToString();
                txtresult.Text = ds.Tables[0].Rows[0]["result"].ToString();
                txtts.Text = ds.Tables[0].Rows[0]["ts"].ToString();
                txtContent.Text = ds.Tables[0].Rows[0]["Content"].ToString()  
                .Replace("\r\n", "<br />");
 
                
            }            
        }
        catch (Exception err)
        {
            //[4]예외
            Response.Write(err.Source + " : " + err.Message);
        }               
    } 
    #endregion
   
}
