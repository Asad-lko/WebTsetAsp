<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
   <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="#" />
	<meta name="author" content="" />
	
	<title>Welcome To Login Page</title>
    	
</head>
<body class="page-body login-page login-form-fall" style="background-image: url('Admin/assets/images/REbg.jpg'); background-repeat: repeat;">
    <form id="form1" runat="server">
		<div align="center">	
            <form method="post" role="form" id="form_login">	
				
                        <table><tr><td><asp:Label ID="Label3" runat="server" Text="Welcome to Admin Panel Login" CssClass="form-control" Font-Bold="True" ></asp:Label><br /><br /></td></tr>
                        
                        
        				<tr><td><asp:TextBox ID="txtloginid" runat="server" class="form-control" autocomplete="off" placeholder="Username"></asp:TextBox><br /><br /></td>
                       
						<td><asp:TextBox ID="txtpwd" runat="server" class="form-control" TextMode="Password" placeholder="Password"></asp:TextBox> <br /><br />  </td></tr>                     
					
				
						<tr><td><asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" class="btn btn-primary btn-block btn-success entypo-login" Font-Size="Large" />
			</td></tr></table>
			</form>
          <asp:Label ID="Label1" runat="server" Text="" ></asp:Label>        
          <asp:Label ID="Label2" runat="server" Text="" ></asp:Label>
        </div>
    
    </form>
</body>
</html>
