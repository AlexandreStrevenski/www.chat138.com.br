using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class login : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            hdnRoomID.Value = Request.QueryString["rid"];
        }
    }

    [WebMethod]
    public void teste(object sender, EventArgs e)
    {
     
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("chat.aspx?rid=" + hdnRoomID.Value + "&user=" + txtUserName.Text);
    }
}