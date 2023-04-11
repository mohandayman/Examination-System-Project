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

namespace Examination_App
{
    public partial class InsertQuestionForm : Form
    {
        int Exam_Num;
        Examination_DBEntities Entity;
        int result;
        public InsertQuestionForm()
        {
            InitializeComponent();
            this.BackgroundImageLayout = ImageLayout.Stretch;
            Exam_Num = 70;
            Entity = new Examination_DBEntities();
            fill_topoics_list();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show(topics.SelectedItem.ToString());
            result = Entity.InsertQuestion(textBox1.Text, TypeComboBox.Text, topics.SelectedItem.ToString(), dataContainer.CrId.ToString());
            MessageBox.Show(result.ToString());
        }

        void fill_topoics_list()
        {
            topics.Items.Clear();
            foreach (var t in Entity.Topics.Where(t=>t.Cr_Id==dataContainer.CrId))
            {
                topics.Items.Add(t.Topic_Name);
            }
        }


    }
}
