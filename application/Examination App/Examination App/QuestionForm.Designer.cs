namespace Examination_App
{
    partial class QuestionForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.Insert_Course = new System.Windows.Forms.Button();
            this.Delete_Course = new System.Windows.Forms.Button();
            this.QuestionView = new System.Windows.Forms.ListView();
            this.QuestionId = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.QuestionName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // Insert_Course
            // 
            this.Insert_Course.BackColor = System.Drawing.Color.DarkMagenta;
            this.Insert_Course.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F);
            this.Insert_Course.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.Insert_Course.Location = new System.Drawing.Point(615, 128);
            this.Insert_Course.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Insert_Course.Name = "Insert_Course";
            this.Insert_Course.Size = new System.Drawing.Size(173, 62);
            this.Insert_Course.TabIndex = 55;
            this.Insert_Course.Text = "Insert Question";
            this.Insert_Course.UseVisualStyleBackColor = false;
            this.Insert_Course.Click += new System.EventHandler(this.Insert_Click);
            // 
            // Delete_Course
            // 
            this.Delete_Course.BackColor = System.Drawing.Color.DarkMagenta;
            this.Delete_Course.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F);
            this.Delete_Course.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.Delete_Course.Location = new System.Drawing.Point(615, 210);
            this.Delete_Course.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Delete_Course.Name = "Delete_Course";
            this.Delete_Course.Size = new System.Drawing.Size(173, 62);
            this.Delete_Course.TabIndex = 54;
            this.Delete_Course.Text = "Delete Question";
            this.Delete_Course.UseVisualStyleBackColor = false;
            this.Delete_Course.Click += new System.EventHandler(this.button3_Click);
            // 
            // QuestionView
            // 
            this.QuestionView.BackColor = System.Drawing.Color.Gray;
            this.QuestionView.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.QuestionId,
            this.QuestionName});
            this.QuestionView.FullRowSelect = true;
            this.QuestionView.HideSelection = false;
            this.QuestionView.Location = new System.Drawing.Point(28, 97);
            this.QuestionView.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.QuestionView.MultiSelect = false;
            this.QuestionView.Name = "QuestionView";
            this.QuestionView.Size = new System.Drawing.Size(567, 245);
            this.QuestionView.TabIndex = 52;
            this.QuestionView.UseCompatibleStateImageBehavior = false;
            this.QuestionView.View = System.Windows.Forms.View.Details;
            // 
            // QuestionId
            // 
            this.QuestionId.Text = "Question ID";
            this.QuestionId.Width = 219;
            // 
            // QuestionName
            // 
            this.QuestionName.Text = "Question Name";
            this.QuestionName.Width = 343;
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox1.BackgroundImage = global::Examination_App.Properties.Resources.Logo;
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pictureBox1.Location = new System.Drawing.Point(631, 11);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(133, 100);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 53;
            this.pictureBox1.TabStop = false;
            // 
            // QuestionForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::Examination_App.Properties.Resources.vecteezy_modern_futuristic_neon_purple_background_;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(800, 366);
            this.Controls.Add(this.Insert_Course);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.Delete_Course);
            this.Controls.Add(this.QuestionView);
            this.Name = "QuestionForm";
            this.Text = "QuestionForm";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button Insert_Course;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button Delete_Course;
        private System.Windows.Forms.ListView QuestionView;
        private System.Windows.Forms.ColumnHeader QuestionId;
        private System.Windows.Forms.ColumnHeader QuestionName;
    }
}