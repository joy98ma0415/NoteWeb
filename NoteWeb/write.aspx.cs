using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace NoteWeb
{
    public partial class write : System.Web.UI.Page
    {
        private SqlConnection conn = new SqlConnection(@"Data Source=azurewebapplication.database.windows.net;Initial Catalog=webapp;User ID=joy51744;Password=Joy98ma0415;Connect Timeout=60;Encrypt=True;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        private SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                string sql = string.Format("INSERT INTO Note(Title,Recorder,Category,Date) VALUES (N'{0}', N'{1}', N'{2}', '{3}') ", TextBoxNote.Text, TextBoxTitle.Text, DropDownListCategory.Text, DateTime.UtcNow.AddHours(08).ToString("yyyy-MM-dd"));
                cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('發表成功！');location='Default.aspx'</script>");
            }
            catch (Exception exp)
            {
                Response.Write(exp.Message);
                Response.Write("<script>alert('發表失敗！');locaton.history</srcipt>");
            }
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            TextBoxNote.Text = "";
            TextBoxTitle.Text = "";
        }
    }
}