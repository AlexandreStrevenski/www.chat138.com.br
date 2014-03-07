// JScript File
        	var msgTimer = "";
        	var membersTimer = "";
			
			startTimers();
	      
			function startTimers()
			{
				msgTimer = window.setInterval("updateUser()",1000);
				membersTimer = window.setInterval("updateMembers()",10000);
				$("txtMsg").focus();
			} 
			function stopTimers()
			{
				window.clearInterval (msgTimer);
				window.clearInterval (membersTimer);
				msgTimer="";
				membersTimer="";
			}
			function updateUser()
			{
			    PageMethods.UpdateUser($get("hdnRoomID").value, UpdateMessages);
			}
			function updateMembers()
			{
			    PageMethods.UpdateRoomMembers($get("hdnRoomID").value, UpdateMembersList);
			}
			function Leave()
			{
			    stopTimers();
			    PageMethods.LeaveRoom($get("hdnRoomID").value);
			}
			function button_clicked()
			{
				PageMethods.SendMessage($get("txtMsg").value,$get("hdnRoomID").value,UpdateMessages, errorCallback);
				$get("txtMsg").value="";
				$get("txt").scrollIntoView("true");
				$get("txtMsg").focus();

				if(navigator.appName.indexOf("Netscape")>(-1))
				{ 
					var textarea = document.getElementById('txt');
					textarea.scrollTop = textarea.scrollHeight;
				}
				
				
			}
			function clickButton(e)
			{ 

				//var bt = document.getElementById(buttonid); 
				//if (typeof bt == 'object')
				//	{ 
						if(navigator.appName.indexOf("Netscape")>(-1))
						{ 
						    if (e.keyCode == 13)
						    {
						        //bt.click();
						        button_clicked();
							    return false; 
						    } 
					    } 

				    if (navigator.appName.indexOf("Microsoft Internet Explorer")>(-1))
					    { 
						    if (event.keyCode == 13)
						    {
						        //bt.click(); 
						        button_clicked();
							    return false; 
						    } 
					    } 
				  //  }	 
			} 
			
			function UpdateMessages(result)
			{
			    $get("txt").value=$get("txt").value+result;
			    $get("txt").doScroll();
			    //alert($("txt").scrollHeight);
			    //$("txt").scrollTo('100%');

			    
			}
			function UpdateMembersList(result)
			{
			   // alert(result);
			    var users=result.split(",");
			   // alert(users.length);
			    var i=0;
                
                
                $get("lstMembers").options.length=0;
                 var i=0;
                while (i < users.length)
                {
                    if (users[i]!="");
                    {
                        var op=new Option(users[i],users[i]);
                        $get("lstMembers").options[$get("lstMembers").options.length]= op;
                    }
                    i+=1;
                }
                
			    //$get("lstMembers").value=$get("txt").value+result;
			    //$get("txt").doScroll();
			}
			function errorCallback(result)
			{
				alert("An error occurred while invoking the remote method: " 
				+ result);
			}
			
        