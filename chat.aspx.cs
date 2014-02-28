using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class chat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        txtMsg.Attributes.Add("onkeypress", "return clickButton(event)");
        if (!IsPostBack)
        {
            hdnRoomID.Value = "1";//Request.QueryString["rid"];
            string user = "alexandre";//Request.QueryString["user"];
            hdnUser.Value = user;
            ChatRoom room = ChatEngine.GetRoom(hdnRoomID.Value);
            string prevMsgs = room.JoinRoom(user, user);
            //txt.Text = prevMsgs;
            foreach (string s in room.GetRoomUsersNames())
            {
                //lstMembers.Items.Add(new ListItem(s, s));
            }

        }


    }


    #region Script Callback functions

    /// <summary>
    /// This function is called from the client script 
    /// </summary>
    /// <param name="msg"></param>
    /// <param name="roomID"></param>
    /// <returns></returns>
    [WebMethod]
    static public string SendMessage(string msg, string roomID)
    {
        try
        {
            ChatRoom room = ChatEngine.GetRoom(roomID);
            string res = "";
            if (room != null)
            {
                res = room.SendMessage(msg, HttpContext.Current.Session["UserName"].ToString());

            }
            return res;
        }
        catch (Exception ex)
        {

        }
        return "";
    }


    /// <summary>
    /// This function is called peridically called from the user to update the messages
    /// </summary>
    /// <param name="otherUserID"></param>
    /// <returns></returns>
    [WebMethod]
    static public string UpdateUser(string roomID)
    {
        try
        {
            ChatRoom room = ChatEngine.GetRoom(roomID);
            if (room != null)
            {
                string res = "";
                if (room != null)
                {
                    res = room.UpdateUser(HttpContext.Current.Session["UserName"].ToString());
                }
                return res;
            }
        }
        catch (Exception ex)
        {

        }
        return "";
    }


    /// <summary>
    /// This function is called from the client when the user is about to leave the room
    /// </summary>
    /// <param name="otherUser"></param>
    /// <returns></returns>
    [WebMethod]
    static public string LeaveRoom(string roomID)
    {
        try
        {
            ChatRoom room = ChatEngine.GetRoom(roomID);
            if (room != null)
                room.LeaveRoom(HttpContext.Current.Session["UserName"].ToString());
        }
        catch (Exception ex)
        {

        }
        return "";
    }


    /// <summary>
    /// Returns a comma separated string containing the names of the users currently online
    /// </summary>
    /// <param name="roomID"></param>
    /// <returns></returns>
    [WebMethod]
    static public string UpdateRoomMembers(string roomID)
    {
        try
        {
            ChatRoom room = ChatEngine.GetRoom(roomID);
            if (room != null)
            {
                IEnumerable<string> users = room.GetRoomUsersNames();
                string res = "";

                foreach (string s in users)
                {
                    res += s + ",";
                }
                return res;
            }
        }
        catch (Exception ex)
        {
        }
        return "";
    }
    #endregion
}