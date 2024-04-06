<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="YourNamespace.Registration" %>

<!DOCTYPE html>
<!-- Designed by CodingLab - youtube.com/codinglabyt -->
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <title>Responsive Registration Form | CodingLab</title>
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
form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
}
form .category{
  display: flex;
  width: 80%;
  margin: 14px 0 ;
  justify-content: space-between;
}
form .category label{
  display: flex;
  align-items: center;
  cursor: pointer;
}
form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
#dot-1:checked ~ .category label .one,
#dot-2:checked ~ .category label .two,
#dot-3:checked ~ .category label .three{
  background: #9b59b6;
  border-color: #d9d9d9;
}
form input[type="radio"]{
  display: none;
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
@media(max-width: 584px){
  .container{
    max-width: 100%;
  }
  form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
}
@media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}

    </style>
<body>
  <div class="container">
    <div class="title">Registration</div>
    <div class="content">
      <form id="registrationForm" runat="server">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <asp:TextBox ID="txtFullName" runat="server" placeholder="Enter your name" Required="true"></asp:TextBox>
          </div>
          <div class="input-box">
            <span class="details">Username</span>
            <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter your username" Required="true"></asp:TextBox>
            <asp:Label ID="lblUsernameError" runat="server" CssClass="error" Visible="false"></asp:Label>
          </div>
          <div class="input-box">
            <span class="details">Height</span>
            <asp:TextBox ID="txtHeight" runat="server" placeholder="Enter your height" Required="true"></asp:TextBox>
          </div>
          <div class="input-box">
            <span class="details">Weight</span>
            <asp:TextBox ID="txtWeight" runat="server" placeholder="Enter your weight" Required="true"></asp:TextBox>
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter your password" Required="true"></asp:TextBox>
            <asp:Label ID="lblPasswordError" runat="server" CssClass="error" Visible="false"></asp:Label>
          </div>
          <div class="input-box">
            <span class="details">Confirm Password</span>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm your password" Required="true"></asp:TextBox>
            <asp:Label ID="lblConfirmPasswordError" runat="server" CssClass="error" Visible="false"></asp:Label>
          </div>
        </div>
        <div class="gender-details">
          <input type="radio" name="gender" id="dot-1" value="Male">
          <input type="radio" name="gender" id="dot-2" value="Female">
          <input type="radio" name="gender" id="dot-3" value="Prefer not to say">
          <span class="gender-title">Gender</span>
          <div class="category">
            <label for="dot-1">
              <span class="dot one"></span>
              <span class="gender">Male</span>
            </label>
            <label for="dot-2">
              <span class="dot two"></span>
              <span class="gender">Female</span>
            </label>
            <label for="dot-3">
              <span class="dot three"></span>
              <span class="gender">Prefer not to say</span>
            </label>
          </div>
          <asp:Label ID="lblGenderError" runat="server" CssClass="error" Visible="false"></asp:Label>
        </div>
        <div class="button">
          <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
        </div>
      </form>
        <div class="register-link">
    Already have an account  <a href="login.aspx">Login here</a>.
</div>
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