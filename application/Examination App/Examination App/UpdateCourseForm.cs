using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Core.Objects;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Examination_App
{
    public partial class UpdateCourseForm : Form
    {
        Examination_DBEntities Entity;
        ObjectResult<SelectCourseById_Result> courseList;
        SelectCourseById_Result CurrentCourse;
        List<int> NotAvillableIDs;
        public UpdateCourseForm()
        {
            InitializeComponent();
            CourseID = dataContainer.CrId;
            Entity = new Examination_DBEntities();
            courseList = Entity.SelectCourseById(CourseID);
            NotAvillableIDs = new List<int>();

            foreach (var c in courseList)
            {
                CurrentCourse = c;
            }
            var Topics = Entity.SelectCourseTopics(dataContainer.CrId);
            foreach (var topic in Topics)
            {
                this.TopicList.Items.Add(topic.Topic_Name);
                TopicList.Text = topic.Topic_Name;
            }
            textBox1.Text = textBox4.Text = CourseID.ToString();
            textBox2.Text = CurrentCourse.Cr_Name;
            textBox1.Enabled = false;
            textBox2.Enabled = false;


            foreach (Course c in Entity.Courses)
            {
                NotAvillableIDs.Add(c.Cr_Id);
            }

        }


        public int CourseID { set; get; }
        private void button1_Click(object sender, EventArgs e)
        {


            var Result = Entity.UpdateCourseName(int.Parse(textBox1.Text), textBox3.Text);
            if (Result > 0)
            {
                textBox2.Text = textBox3.Text;
                textBox3.Text = "";
                MessageBox.Show($"{Result} row Affected");

            }
            else
            {
                MessageBox.Show($"Invalid Data");

            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
