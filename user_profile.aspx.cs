using System;
using System.Data.SqlClient;

namespace YourNamespace
{
    public partial class User_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
            {
                // Redirect the user to the login page
                Response.Redirect("Login.aspx");
            }
            else
            {
                // Load user profile data
                LoadUserProfile();
            }
        }

        private void LoadUserProfile()
        {
            // Retrieve user profile information from the database based on username and password
            string username = User.Identity.Name; // Get username of logged in user

            // Connection string to your database
            string connectionString = "Data Source=PC;Initial Catalog=pap_aayuhs;Persist Security Info=True;User ID=pap_aayush;Password=1234;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();

                    // If the connection is successful, display a message
                    Response.Write("SQL connection successful.");

                    // Proceed with retrieving user profile information
                    string query = "SELECT FullName, Height, Weight FROM Users WHERE Username = @Username";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@Username", username);

                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        // Populate the text boxes with user profile information
                        txtFullName.Text = reader["FullName"].ToString();
                        txtHeight.Text = reader["Height"].ToString();
                        txtWeight.Text = reader["Weight"].ToString();
                    }
                    reader.Close();
                }
                catch (Exception ex)
                {
                    // Handle exceptions
                    Response.Write("An error occurred: " + ex.Message);
                }
            }
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            // Handle save button click event here
            // This method will be executed when the "Save" button is clicked
            // You can save the updated profile information to the database here
        }
    }
}
