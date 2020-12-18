using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sports
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string fullname = FullName.Text.ToString();
            string email = Email.Text.ToString();
            string password = Password.Text.ToString();



            if (fullname == "" || email == "" || password == "")

            {
                EmptyInputs.Text = "All the fields are required to be filled";
            }
            else
            {
                string connectionString;
                SqlConnection cnn;

                SqlCommand command;
                SqlDataAdapter adapter;
                string sql = "";

                sql = "INSERT INTO Trial VALUES ('" + fullname + "','" + email + "','" + password + "',)";

                connectionString = @"Data Source=.;Initial Catalog=CRICKET;Integrated Security=True";

                cnn = new SqlConnection(connectionString);

                cnn.Open();

                //Response.Write("Connection suceeded");

                adapter = new SqlDataAdapter();
                command = new SqlCommand(sql, cnn);

                adapter.InsertCommand = new SqlCommand(sql, cnn);
                adapter.InsertCommand.ExecuteNonQuery();
                
                Response.Write("sucessfully registered");

                command.Dispose();
                cnn.Close();
            }                
        }
internal class fullname
    {
    }

    internal class email
    {
    }

    internal class password
    {
    }

}
}