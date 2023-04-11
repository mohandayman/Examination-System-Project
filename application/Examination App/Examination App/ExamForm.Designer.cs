namespace Examination_App
{
    partial class ExamForm
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
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.time = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.NextButton = new System.Windows.Forms.Button();
            this.Current_Question_Label = new System.Windows.Forms.Label();
            this.Questions_List = new System.Windows.Forms.ListBox();
            this.PrevButton = new System.Windows.Forms.Button();
            this.Submit = new System.Windows.Forms.Button();
            this.QuestionContent = new System.Windows.Forms.RichTextBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox1.Image = global::Examination_App.Properties.Resources.Logo;
            this.pictureBox1.Location = new System.Drawing.Point(677, 23);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(100, 59);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 27;
            this.pictureBox1.TabStop = false;
            // 
            // time
            // 
            this.time.AutoSize = true;
            this.time.BackColor = System.Drawing.Color.Transparent;
            this.time.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.time.ForeColor = System.Drawing.Color.White;
            this.time.Location = new System.Drawing.Point(628, 55);
            this.time.Name = "time";
            this.time.Size = new System.Drawing.Size(29, 20);
            this.time.TabIndex = 26;
            this.time.Text = "60";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(575, 55);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(68, 20);
            this.label2.TabIndex = 25;
            this.label2.Text = "Time : ";
            // 
            // NextButton
            // 
            this.NextButton.BackColor = System.Drawing.Color.White;
            this.NextButton.Location = new System.Drawing.Point(370, 396);
            this.NextButton.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.NextButton.Name = "NextButton";
            this.NextButton.Size = new System.Drawing.Size(94, 31);
            this.NextButton.TabIndex = 24;
            this.NextButton.Text = "Next>>";
            this.NextButton.UseVisualStyleBackColor = false;
            this.NextButton.Click += new System.EventHandler(this.NextButton_Click);
            // 
            // Current_Question_Label
            // 
            this.Current_Question_Label.AutoSize = true;
            this.Current_Question_Label.BackColor = System.Drawing.Color.Transparent;
            this.Current_Question_Label.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Current_Question_Label.ForeColor = System.Drawing.Color.White;
            this.Current_Question_Label.Location = new System.Drawing.Point(220, 32);
            this.Current_Question_Label.Name = "Current_Question_Label";
            this.Current_Question_Label.Size = new System.Drawing.Size(156, 20);
            this.Current_Question_Label.TabIndex = 22;
            this.Current_Question_Label.Text = "Qustion XX Of 10";
            // 
            // Questions_List
            // 
            this.Questions_List.FormattingEnabled = true;
            this.Questions_List.ItemHeight = 16;
            this.Questions_List.Location = new System.Drawing.Point(565, 87);
            this.Questions_List.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Questions_List.Name = "Questions_List";
            this.Questions_List.Size = new System.Drawing.Size(194, 340);
            this.Questions_List.TabIndex = 21;
            this.Questions_List.SelectedIndexChanged += new System.EventHandler(this.Questions_List_SelectedIndexChanged);
            // 
            // PrevButton
            // 
            this.PrevButton.BackColor = System.Drawing.Color.White;
            this.PrevButton.Location = new System.Drawing.Point(139, 396);
            this.PrevButton.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.PrevButton.Name = "PrevButton";
            this.PrevButton.Size = new System.Drawing.Size(94, 31);
            this.PrevButton.TabIndex = 20;
            this.PrevButton.Text = "<<Prev";
            this.PrevButton.UseVisualStyleBackColor = false;
            this.PrevButton.Click += new System.EventHandler(this.PrevButton_Click);
            // 
            // Submit
            // 
            this.Submit.Location = new System.Drawing.Point(253, 396);
            this.Submit.Name = "Submit";
            this.Submit.Size = new System.Drawing.Size(94, 31);
            this.Submit.TabIndex = 32;
            this.Submit.Text = "submit";
            this.Submit.UseVisualStyleBackColor = true;
            this.Submit.Click += new System.EventHandler(this.Submit_Click);
            // 
            // QuestionContent
            // 
            this.QuestionContent.Location = new System.Drawing.Point(45, 55);
            this.QuestionContent.Name = "QuestionContent";
            this.QuestionContent.Size = new System.Drawing.Size(494, 79);
            this.QuestionContent.TabIndex = 33;
            this.QuestionContent.Text = "";
            // 
            // ExamForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::Examination_App.Properties.Resources.vecteezy_modern_futuristic_neon_purple_background_;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.QuestionContent);
            this.Controls.Add(this.Submit);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.time);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.NextButton);
            this.Controls.Add(this.Current_Question_Label);
            this.Controls.Add(this.Questions_List);
            this.Controls.Add(this.PrevButton);
            this.Name = "ExamForm";
            this.Text = "Exam";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label time;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button NextButton;
        private System.Windows.Forms.Label Current_Question_Label;
        private System.Windows.Forms.ListBox Questions_List;
        private System.Windows.Forms.Button PrevButton;
        private System.Windows.Forms.Button Submit;
        private System.Windows.Forms.RichTextBox QuestionContent;
    }
}