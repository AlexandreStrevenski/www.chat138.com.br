using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ChatRoom room = ChatEngine.GetRoom("1");
            int number = room.GetNumberUsers();
            alvorada.InnerHtml = "<a href='login.aspx?rid=1'> (" + number + ") Alvorada </a>";


        }
    }
}