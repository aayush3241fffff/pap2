using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace YourNamespace
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                // Get form field values
                string username = txtUsername.Text;
                string password = txtPassword.Text;
                string confirmPassword = txtConfirmPassword.Text;
                string FullName = txtFullName.Text;
                double height = Convert.ToDouble(txtHeight.Text);
                double weight = Convert.ToDouble(txtWeight.Text);
                string gender = Request.Form["gender"];

                // Check if passwords match
                if (password != confirmPassword)
                {
                    lblConfirmPasswordError.Text = "Passwords do not match.";
                    lblConfirmPasswordError.Visible = true;
                    return;
                }

                // Check password strength
                string passwordStrength = CheckPasswordStrength(password);
                if (passwordStrength == "Weak")
                {
                    lblPasswordError.Text = "Password is weak. Please include at least one uppercase letter, one number, and one special character.";
                    lblPasswordError.Visible = true;
                    return;
                }

                // Check if user already exists
                if (UserExists(username))
                {
                    lblUsernameError.Text = "Username already exists.";
                    lblUsernameError.Visible = true;
                    return;
                }

                // Calculate BMI
                double bmi = CalculateBMI(weight, height);

                // Save user details and BMI in the database
                SaveUserDetails(username, password, height, weight, bmi, gender, FullName);

                // Debug statement to ensure that redirection is reached
                Response.Redirect("login.aspx");
            }
            catch (Exception ex)
            {
                // Display error message
                // Handle other exceptions if needed
                lblConfirmPasswordError.Text = "An error occurred: " + ex.Message;
                lblConfirmPasswordError.Visible = true;
            }
        }

        // Method to calculate BMI
        private double CalculateBMI(double weight, double height)
        {
            // Convert height from cm to meters
            double heightMeters = height / 100.0;

            // Calculate BMI
            return weight / (heightMeters * heightMeters);
        }

        // Method to save user details and BMI in the database
        private void SaveUserDetails(string username, string password, double height, double weight, double bmi, string gender ,string txtFullName)
        {
            // Connection string to your SQL Server database
            string connectionString = "Data Source=PC;Initial Catalog=pap_aayuhs;Persist Security Info=True;User ID=pap_aayush;Password=1234;";

            // SQL query to insert user details into the database
            string query = "INSERT INTO Users (Username, Password, Height, Weight, BMI, Gender , FullName) VALUES (@Username, @Password, @Height, @Weight, @BMI, @Gender , @FullName)";

            // Create a new SqlConnection object
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Create a new SqlCommand object
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the query
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);
                    command.Parameters.AddWithValue("@Height", height);
                    command.Parameters.AddWithValue("@FullName", txtFullName);
                    command.Parameters.AddWithValue("@Weight", weight);
                    command.Parameters.AddWithValue("@BMI", bmi);
                    command.Parameters.AddWithValue("@Gender", gender);

                    // Open the connection
                    connection.Open();

                    // Execute the query
                    command.ExecuteNonQuery();
                }
            }
        }

        // Method to check if user already exists in the database
        private bool UserExists(string username)
        {
            // Your SQL query to check if the username already exists in the database
            // Execute the query and return true if the user exists, otherwise return false
            return false; // Placeholder
        }

        // Method to check password strength
        private string CheckPasswordStrength(string password)
        {
            // Check if password contains at least one uppercase letter
            bool hasUppercase = false;
            foreach (char c in password)
            {
                if (char.IsUpper(c))
                {
                    hasUppercase = true;
                    break;
                }
            }

            // Check if password contains at least one number
            bool hasNumber = false;
            foreach (char c in password)
            {
                if (char.IsDigit(c))
                {
                    hasNumber = true;
                    break;
                }
            }

            // Check if password contains at least one special character
            bool hasSpecialChar = false;
            foreach (char c in password)
            {
                if (!char.IsLetterOrDigit(c))
                {
                    hasSpecialChar = true;
                    break;
                }
            }

            // Determine password strength based on conditions
            if (hasUppercase && hasNumber && hasSpecialChar)
            {
                return "Hard";
            }
            else if (!hasUppercase && hasNumber && hasSpecialChar)
            {
                return "Medium";
            }
            else
            {
                return "Weak";
            }
        }
    }
}
