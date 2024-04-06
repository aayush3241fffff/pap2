<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="YourNamespace.Login" %>

<!DOCTYPE html>
<!-- Designed by CodingLab - youtube.com/codinglabyt -->
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link rel="stylesheet" href="style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
body{
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.container{
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}
form .button{
  height: 45px;
  margin: 35px 0
}
form .button input{
  height: 100%;
  width: 100%;
  border-radius: 5px;
  border: none;
  color: #fff;
  font-size: 18px;
  font-weight: 500;
  letter-spacing: 1px;
  cursor: pointer;
  transition: all 0.3s ease;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
form .button input:hover{
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
}
</style>
<body>
<div class="container">
   
     <div class="title">Login</div>
        <div class="content">
     <form id="loginForm" runat="server">
         <div class="user-details">
             <div class="input-box">
                 <span class="details">Username</span>
                 <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter your username" Required="true"></asp:TextBox>
             </div>
             <div class="input-box">
                 <span class="details">Password</span>
                 <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter your password" Required="true"></asp:TextBox>
             </div>
         </div>
         <div class="button">
             <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
              <asp:Label ID="lblError" runat="server" CssClass="error" Visible="false"></asp:Label>
     
         </div>
     </form>
       
</div>

</div>
<script>
    // JavaScript code for making the form responsive
    const inputs = document.querySelectorAll('.input-box input');

    function addClass() {
        let parent = this.parentNode.parentNode;
        parent.classList.add('focus');
    }

    function removeClass() {
        let parent = this.parentNode.parentNode;
        if (this.value === '') {
            parent.classList.remove('focus');
        }
    }

    inputs.forEach(input => {
        input.addEventListener('focus', addClass);
        input.addEventListener('blur', removeClass);
    });
</script>
</body>
</html>
