﻿namespace Examination_App
{
    partial class InstructorForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(InstructorForm));
            this.Insert_Course = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.Delete_Course = new System.Windows.Forms.Button();
            this.Update_Course = new System.Windows.Forms.Button();
            this.CoursesListView = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader3 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader4 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Update_Info = new System.Windows.Forms.Button();
            this.IDLabel = new System.Windows.Forms.Label();
            this.NameLabel = new System.Windows.Forms.Label();
            this.InsID = new System.Windows.Forms.Label();
            this.InsName = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // Insert_Course
            // 
            this.Insert_Course.BackColor = System.Drawing.Color.DarkMagenta;
            this.Insert_Course.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F);
            this.Insert_Course.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.Insert_Course.Location = new System.Drawing.Point(315, 466);
            this.Insert_Course.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Insert_Course.Name = "Insert_Course";
            this.Insert_Course.Size = new System.Drawing.Size(173, 62);
            this.Insert_Course.TabIndex = 51;
            this.Insert_Course.Text = "Insert Course";
            this.Insert_Course.UseVisualStyleBackColor = false;
            this.Insert_Course.Click += new System.EventHandler(this.Insert_Course_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox1.BackgroundImage = global::Examination_App.Properties.Resources.Logo;
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pictureBox1.Location = new System.Drawing.Point(-3, -2);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(133, 100);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 48;
            this.pictureBox1.TabStop = false;
            // 
            // Delete_Course
            // 
            this.Delete_Course.BackColor = System.Drawing.Color.DarkMagenta;
            this.Delete_Course.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F);
            this.Delete_Course.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.Delete_Course.Location = new System.Drawing.Point(773, 466);
            this.Delete_Course.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Delete_Course.Name = "Delete_Course";
            this.Delete_Course.Size = new System.Drawing.Size(173, 62);
            this.Delete_Course.TabIndex = 50;
            this.Delete_Course.Text = "Delete Course";
            this.Delete_Course.UseVisualStyleBackColor = false;
            this.Delete_Course.Click += new System.EventHandler(this.Delete_Course_Click);
            // 
            // Update_Course
            // 
            this.Update_Course.BackColor = System.Drawing.Color.DarkMagenta;
            this.Update_Course.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F);
            this.Update_Course.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.Update_Course.Location = new System.Drawing.Point(550, 466);
            this.Update_Course.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Update_Course.Name = "Update_Course";
            this.Update_Course.Size = new System.Drawing.Size(173, 62);
            this.Update_Course.TabIndex = 49;
            this.Update_Course.Text = "Update Course";
            this.Update_Course.UseVisualStyleBackColor = false;
            this.Update_Course.Click += new System.EventHandler(this.Update_Course_Click);
            // 
            // CoursesListView
            // 
            this.CoursesListView.BackColor = System.Drawing.Color.Gray;
            this.CoursesListView.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3,
            this.columnHeader4});
            this.CoursesListView.FullRowSelect = true;
            this.CoursesListView.HideSelection = false;
            this.CoursesListView.Location = new System.Drawing.Point(84, 256);
            this.CoursesListView.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.CoursesListView.MultiSelect = false;
            this.CoursesListView.Name = "CoursesListView";
            this.CoursesListView.Size = new System.Drawing.Size(869, 176);
            this.CoursesListView.TabIndex = 47;
            this.CoursesListView.UseCompatibleStateImageBehavior = false;
            this.CoursesListView.View = System.Windows.Forms.View.Details;
            this.CoursesListView.SelectedIndexChanged += new System.EventHandler(this.CoursesListView_SelectedIndexChanged);
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "ID";
            this.columnHeader1.Width = 48;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Name";
            this.columnHeader2.Width = 194;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "Topic";
            this.columnHeader3.Width = 277;
            // 
            // columnHeader4
            // 
            this.columnHeader4.Text = "No.Of Student";
            this.columnHeader4.Width = 130;
            // 
            // Update_Info
            // 
            this.Update_Info.BackColor = System.Drawing.Color.DarkMagenta;
            this.Update_Info.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F);
            this.Update_Info.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.Update_Info.Location = new System.Drawing.Point(812, 119);
            this.Update_Info.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Update_Info.Name = "Update_Info";
            this.Update_Info.Size = new System.Drawing.Size(173, 62);
            this.Update_Info.TabIndex = 41;
            this.Update_Info.Text = "Update Info";
            this.Update_Info.UseVisualStyleBackColor = false;
            this.Update_Info.Click += new System.EventHandler(this.Update_Info_Click);
            // 
            // IDLabel
            // 
            this.IDLabel.AutoSize = true;
            this.IDLabel.BackColor = System.Drawing.Color.Transparent;
            this.IDLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.IDLabel.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.IDLabel.Location = new System.Drawing.Point(137, 50);
            this.IDLabel.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.IDLabel.Name = "IDLabel";
            this.IDLabel.Size = new System.Drawing.Size(74, 48);
            this.IDLabel.TabIndex = 52;
            this.IDLabel.Text = "ID:";
            // 
            // NameLabel
            // 
            this.NameLabel.AutoSize = true;
            this.NameLabel.BackColor = System.Drawing.Color.Transparent;
            this.NameLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 24.75F);
            this.NameLabel.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.NameLabel.Location = new System.Drawing.Point(137, 116);
            this.NameLabel.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.NameLabel.Name = "NameLabel";
            this.NameLabel.Size = new System.Drawing.Size(143, 48);
            this.NameLabel.TabIndex = 53;
            this.NameLabel.Text = "Name:";
            // 
            // InsID
            // 
            this.InsID.AutoSize = true;
            this.InsID.BackColor = System.Drawing.Color.Transparent;
            this.InsID.Font = new System.Drawing.Font("Microsoft Sans Serif", 24.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.InsID.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.InsID.Location = new System.Drawing.Point(241, 50);
            this.InsID.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.InsID.Name = "InsID";
            this.InsID.Size = new System.Drawing.Size(0, 48);
            this.InsID.TabIndex = 54;
            // 
            // InsName
            // 
            this.InsName.AutoSize = true;
            this.InsName.BackColor = System.Drawing.Color.Transparent;
            this.InsName.Font = new System.Drawing.Font("Microsoft Sans Serif", 24.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.InsName.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.InsName.Location = new System.Drawing.Point(307, 116);
            this.InsName.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.InsName.Name = "InsName";
            this.InsName.Size = new System.Drawing.Size(0, 48);
            this.InsName.TabIndex = 55;
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.DarkMagenta;
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F);
            this.button1.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.button1.Location = new System.Drawing.Point(107, 466);
            this.button1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(173, 62);
            this.button1.TabIndex = 56;
            this.button1.Text = "Insert Question";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // InstructorForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::Examination_App.Properties.Resources.vecteezy_modern_futuristic_neon_purple_background_;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1045, 567);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.InsName);
            this.Controls.Add(this.InsID);
            this.Controls.Add(this.NameLabel);
            this.Controls.Add(this.IDLabel);
            this.Controls.Add(this.Insert_Course);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.Delete_Course);
            this.Controls.Add(this.Update_Course);
            this.Controls.Add(this.CoursesListView);
            this.Controls.Add(this.Update_Info);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "InstructorForm";
            this.Text = "Instructor";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.InstructorForm_FormClosed);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button Insert_Course;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button Delete_Course;
        private System.Windows.Forms.Button Update_Course;
        private System.Windows.Forms.ListView CoursesListView;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ColumnHeader columnHeader3;
        private System.Windows.Forms.ColumnHeader columnHeader4;
        private System.Windows.Forms.Button Update_Info;
        private System.Windows.Forms.Label IDLabel;
        private System.Windows.Forms.Label NameLabel;
        private System.Windows.Forms.Label InsID;
        private System.Windows.Forms.Label InsName;
        private System.Windows.Forms.Button button1;
    }
}