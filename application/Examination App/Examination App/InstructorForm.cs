using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Examination_App
{
    public partial class InstructorForm : Form
    {
        private Examination_DBEntities Context;
        private Boolean selected = false;
        public InstructorForm(int ID)
        {
            InitializeComponent();
            this.BackgroundImageLayout = ImageLayout.Stretch;

            Context = new Examination_DBEntities();
            var Ins = Context.SelectInstructorById(ID).FirstOrDefault();
            InsID.Text = Ins.Ins_Id.ToString();
            InsName.Text = Ins.Ins_Name;

            this.BackgroundImageLayout = ImageLayout.Stretch;

            var Details = Context.SelecForInstructorForm(ID);

            foreach (var detail in Details)
            {
                ListViewItem row = new ListViewItem();
                row.Text = detail.ID.ToString();
                row.SubItems.Add(detail.Course_Name);
                row.SubItems.Add(detail.Topic_Name);
                var Students = Context.Stu_Courses.Where(c => c.Cr_Id == detail.ID).Select(s => s.St_Id).Count();
                row.SubItems.Add(Students.ToString());

                CoursesListView.Items.Add(row);
            }
        }

        private void Insert_Course_Click(object sender, EventArgs e)
        {
            InsertCourseForm insertCourseForm = new InsertCourseForm();
            insertCourseForm.ShowDialog();
        }

        private void Update_Info_Click(object sender, EventArgs e)
        {
            UpdateData updateDataForm = new UpdateData(dataContainer.id, "Instructor");
            updateDataForm.ShowDialog();
        }

        private void InstructorForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }

        private void Update_Course_Click(object sender, EventArgs e)
        {
            if (selected)
            {
                UpdateCourseForm updateCourseForm = new UpdateCourseForm();
                updateCourseForm.ShowDialog();
            }
        }

        private void CoursesListView_SelectedIndexChanged(object sender, EventArgs e)
        {
            dataContainer.CrId=int.Parse(CoursesListView.Items[0].Text);
            selected = true;
        }

        private void Delete_Course_Click(object sender, EventArgs e)
        {
            if (selected) { 
                var Query = Context.Courses.Where(c => c.Cr_Id == dataContainer.CrId).Select(c => c);
                var course = Query.FirstOrDefault();
                MessageBox.Show(course.Cr_Name+" deleted");
                Context.Courses.Remove(course);
                Context.SaveChanges();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (selected)
            {
                QuestionForm questionForm = new QuestionForm();
                questionForm.ShowDialog();
            }
        }
    }
}
