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
    public partial class QuestionForm : Form
    {
        
        Examination_DBEntities Entity;

        public QuestionForm()
        {
            InitializeComponent();
            this.BackgroundImageLayout = ImageLayout.Stretch;
            Entity = new Examination_DBEntities();
            refresh();
        }

        private void Insert_Click(object sender, EventArgs e)
        {
            InsertQuestionForm QuestionForm = new InsertQuestionForm();
            QuestionForm.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            ListViewItem selectedItem = QuestionView.SelectedItems[0];
            string selectedValue = selectedItem.SubItems[0].Text;
            MessageBox.Show(selectedValue);
            Entity.QuestionDelete_By_Id(selectedValue.ToString());
            refresh();
        }

        void refresh()
        {
            QuestionView.Items.Clear();
            var Questions = Entity.Select_QuestionsByCr(dataContainer.CrId);

            foreach (var q in Questions)
            {
                ListViewItem item = new ListViewItem(q.Q_ID.ToString());
                item.SubItems.Add(q.Q_Content);
                QuestionView.Items.Add(item);
            }
        }
    }
}
