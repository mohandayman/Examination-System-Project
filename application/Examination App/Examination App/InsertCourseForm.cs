using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ToolBar;

namespace Examination_App
{
    public partial class InsertCourseForm : Form
    {
        Examination_DBEntities Entity;

        public InsertCourseForm()
        {
            InitializeComponent();
            Entity = new Examination_DBEntities();
            int r = Entity.Courses.Count() + 1;
            CrIdTextBox.Text = r.ToString();
            CrIdTextBox.Enabled = false;

        }

        private void button1_Click(object sender, EventArgs e)
        {
            var Result = Entity.Insert_Course(CrNameTextBox.Text);
            AddBtn.Enabled = false;
            this.Close();
            MessageBox.Show($"{Result} row Affected");

        }

        private void CancelBtn_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}