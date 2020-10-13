using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DrSadamConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
    }    

    protected void Button1_Click(object sender, EventArgs e)
    {        
        if (Page.IsValid)
        {
            con.Open();
            string str = "Select cpass from cuser Where cpin='" + txtloginid.Text + "' and cpass='" + txtpwd.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtpwd.Text = dr["cpass"].ToString();

                Session["kuser"] = txtloginid.Text;
                Response.Redirect("~/user/Home.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Credential You Entered is wrong');", true);
            }
            con.Close();
    }        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}