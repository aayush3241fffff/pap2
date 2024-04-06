<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="food_tracker.aspx.cs" Inherits="YourNamespace.food_tracker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Food Tracker</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Food Tracker</h1>
            <div>
                <label for="foodName">Food Name:</label>
                <input type="text" id="foodName" runat="server" />
            </div>
            <div>
                <label for="quantity">Quantity:</label>
                <input type="number" id="quantity" runat="server" />
            </div>
            <div>
                <input type="button" value="Add Food" onclick="addFood()" />
            </div>
            <hr />
            <div>
                <h2>Today's Food Log</h2>
                <ul id="foodList" runat="server">
                    <!-- Food items will be added here dynamically -->
                </ul>
            </div>
        </div>
    </form>

    <script type="text/javascript">
        function addFood() {
            var foodName = document.getElementById('<%=foodName.ClientID%>').value;
            var quantity = document.getElementById('<%=quantity.ClientID%>').value;

            // Create a new list item to display the food entry
            var li = document.createElement("li");
            li.textContent = quantity + " " + foodName;

            // Append the new list item to the food list
            document.getElementById("foodList").appendChild(li);

            // Clear input fields after adding food
            document.getElementById('<%=foodName.ClientID%>').value = "";
            document.getElementById('<%=quantity.ClientID%>').value = "";
        }
    </script>
</body>
</html>
