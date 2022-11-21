namespace HelloMyCSharp06_01
{
    partial class Form1
    {
        /// <summary>
        /// 필수 디자이너 변수입니다.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 사용 중인 모든 리소스를 정리합니다.
        /// </summary>
        /// <param name="disposing">관리되는 리소스를 삭제해야 하면 true이고, 그렇지 않으면 false입니다.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form 디자이너에서 생성한 코드

        /// <summary>
        /// 디자이너 지원에 필요한 메서드입니다. 
        /// 이 메서드의 내용을 코드 편집기로 수정하지 마세요.
        /// </summary>
        private void InitializeComponent()
        {
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.button6 = new System.Windows.Forms.Button();
            this.button7 = new System.Windows.Forms.Button();
            this.button8 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.button9 = new System.Windows.Forms.Button();
            this.button10 = new System.Windows.Forms.Button();
            this.button11 = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox_w = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.textBox_h = new System.Windows.Forms.TextBox();
            this.textBox_z = new System.Windows.Forms.TextBox();
            this.label_area = new System.Windows.Forms.Label();
            this.label_volume = new System.Windows.Forms.Label();
            this.textBox_r = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.button12 = new System.Windows.Forms.Button();
            this.button13 = new System.Windows.Forms.Button();
            this.button14 = new System.Windows.Forms.Button();
            this.button15 = new System.Windows.Forms.Button();
            this.button16 = new System.Windows.Forms.Button();
            this.label_circle_round = new System.Windows.Forms.Label();
            this.label_circle_area = new System.Windows.Forms.Label();
            this.label_circle_volume = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(13, 13);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(137, 23);
            this.button1.TabIndex = 0;
            this.button1.Text = "직사각형 넓이";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(172, 13);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(163, 23);
            this.button2.TabIndex = 1;
            this.button2.Text = "직육면체 넓이";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(360, 13);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(134, 23);
            this.button3.TabIndex = 2;
            this.button3.Text = "직육 면체 부피";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(12, 64);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(138, 23);
            this.button4.TabIndex = 3;
            this.button4.Text = "원의 둘레";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(172, 64);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(138, 23);
            this.button5.TabIndex = 4;
            this.button5.Text = "원의 넓이";
            this.button5.UseVisualStyleBackColor = true;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            // 
            // button6
            // 
            this.button6.Location = new System.Drawing.Point(13, 113);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(138, 23);
            this.button6.TabIndex = 5;
            this.button6.Text = "구의 둘레(2D)";
            this.button6.UseVisualStyleBackColor = true;
            this.button6.Click += new System.EventHandler(this.button6_Click);
            // 
            // button7
            // 
            this.button7.Location = new System.Drawing.Point(172, 113);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(195, 23);
            this.button7.TabIndex = 6;
            this.button7.Text = "구의 넓이(2D) 겉넓이 아님";
            this.button7.UseVisualStyleBackColor = true;
            this.button7.Click += new System.EventHandler(this.button7_Click);
            // 
            // button8
            // 
            this.button8.Location = new System.Drawing.Point(390, 113);
            this.button8.Name = "button8";
            this.button8.Size = new System.Drawing.Size(138, 23);
            this.button8.TabIndex = 7;
            this.button8.Text = "구의 부피";
            this.button8.UseVisualStyleBackColor = true;
            this.button8.Click += new System.EventHandler(this.button8_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(28, 230);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(15, 12);
            this.label1.TabIndex = 8;
            this.label1.Text = "W";
            // 
            // button9
            // 
            this.button9.Location = new System.Drawing.Point(12, 177);
            this.button9.Name = "button9";
            this.button9.Size = new System.Drawing.Size(137, 23);
            this.button9.TabIndex = 9;
            this.button9.Text = "직사각형 넓이";
            this.button9.UseVisualStyleBackColor = true;
            this.button9.Click += new System.EventHandler(this.button9_Click);
            // 
            // button10
            // 
            this.button10.Location = new System.Drawing.Point(182, 177);
            this.button10.Name = "button10";
            this.button10.Size = new System.Drawing.Size(163, 23);
            this.button10.TabIndex = 10;
            this.button10.Text = "직육면체 넓이";
            this.button10.UseVisualStyleBackColor = true;
            this.button10.Click += new System.EventHandler(this.button10_Click);
            // 
            // button11
            // 
            this.button11.Location = new System.Drawing.Point(376, 177);
            this.button11.Name = "button11";
            this.button11.Size = new System.Drawing.Size(134, 23);
            this.button11.TabIndex = 11;
            this.button11.Text = "직육 면체 부피";
            this.button11.UseVisualStyleBackColor = true;
            this.button11.Click += new System.EventHandler(this.button11_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(212, 230);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(13, 12);
            this.label2.TabIndex = 12;
            this.label2.Text = "H";
            // 
            // textBox_w
            // 
            this.textBox_w.Location = new System.Drawing.Point(84, 227);
            this.textBox_w.Name = "textBox_w";
            this.textBox_w.Size = new System.Drawing.Size(100, 21);
            this.textBox_w.TabIndex = 13;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(398, 230);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(13, 12);
            this.label3.TabIndex = 14;
            this.label3.Text = "Z";
            // 
            // textBox_h
            // 
            this.textBox_h.Location = new System.Drawing.Point(267, 227);
            this.textBox_h.Name = "textBox_h";
            this.textBox_h.Size = new System.Drawing.Size(100, 21);
            this.textBox_h.TabIndex = 16;
            // 
            // textBox_z
            // 
            this.textBox_z.Location = new System.Drawing.Point(456, 227);
            this.textBox_z.Name = "textBox_z";
            this.textBox_z.Size = new System.Drawing.Size(100, 21);
            this.textBox_z.TabIndex = 17;
            // 
            // label_area
            // 
            this.label_area.AutoSize = true;
            this.label_area.Location = new System.Drawing.Point(594, 233);
            this.label_area.Name = "label_area";
            this.label_area.Size = new System.Drawing.Size(41, 12);
            this.label_area.TabIndex = 18;
            this.label_area.Text = "넓이 : ";
            // 
            // label_volume
            // 
            this.label_volume.AutoSize = true;
            this.label_volume.Location = new System.Drawing.Point(594, 265);
            this.label_volume.Name = "label_volume";
            this.label_volume.Size = new System.Drawing.Size(41, 12);
            this.label_volume.TabIndex = 19;
            this.label_volume.Text = "부피 : ";
            // 
            // textBox_r
            // 
            this.textBox_r.Location = new System.Drawing.Point(72, 361);
            this.textBox_r.Name = "textBox_r";
            this.textBox_r.Size = new System.Drawing.Size(100, 21);
            this.textBox_r.TabIndex = 20;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(16, 364);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(13, 12);
            this.label4.TabIndex = 21;
            this.label4.Text = "R";
            // 
            // button12
            // 
            this.button12.Location = new System.Drawing.Point(12, 279);
            this.button12.Name = "button12";
            this.button12.Size = new System.Drawing.Size(138, 23);
            this.button12.TabIndex = 22;
            this.button12.Text = "원의 둘레";
            this.button12.UseVisualStyleBackColor = true;
            this.button12.Click += new System.EventHandler(this.button12_Click);
            // 
            // button13
            // 
            this.button13.Location = new System.Drawing.Point(197, 279);
            this.button13.Name = "button13";
            this.button13.Size = new System.Drawing.Size(138, 23);
            this.button13.TabIndex = 23;
            this.button13.Text = "원의 넓이";
            this.button13.UseVisualStyleBackColor = true;
            this.button13.Click += new System.EventHandler(this.button13_Click);
            // 
            // button14
            // 
            this.button14.Location = new System.Drawing.Point(12, 320);
            this.button14.Name = "button14";
            this.button14.Size = new System.Drawing.Size(138, 23);
            this.button14.TabIndex = 24;
            this.button14.Text = "구의 둘레(2D)";
            this.button14.UseVisualStyleBackColor = true;
            this.button14.Click += new System.EventHandler(this.button14_Click);
            // 
            // button15
            // 
            this.button15.Location = new System.Drawing.Point(197, 320);
            this.button15.Name = "button15";
            this.button15.Size = new System.Drawing.Size(195, 23);
            this.button15.TabIndex = 25;
            this.button15.Text = "구의 넓이(2D) 겉넓이 아님";
            this.button15.UseVisualStyleBackColor = true;
            this.button15.Click += new System.EventHandler(this.button15_Click);
            // 
            // button16
            // 
            this.button16.Location = new System.Drawing.Point(409, 320);
            this.button16.Name = "button16";
            this.button16.Size = new System.Drawing.Size(138, 23);
            this.button16.TabIndex = 26;
            this.button16.Text = "구의 부피";
            this.button16.UseVisualStyleBackColor = true;
            this.button16.Click += new System.EventHandler(this.button16_Click);
            // 
            // label_circle_round
            // 
            this.label_circle_round.AutoSize = true;
            this.label_circle_round.Location = new System.Drawing.Point(222, 364);
            this.label_circle_round.Name = "label_circle_round";
            this.label_circle_round.Size = new System.Drawing.Size(41, 12);
            this.label_circle_round.TabIndex = 27;
            this.label_circle_round.Text = "둘레 : ";
            // 
            // label_circle_area
            // 
            this.label_circle_area.AutoSize = true;
            this.label_circle_area.Location = new System.Drawing.Point(222, 396);
            this.label_circle_area.Name = "label_circle_area";
            this.label_circle_area.Size = new System.Drawing.Size(41, 12);
            this.label_circle_area.TabIndex = 28;
            this.label_circle_area.Text = "넓이 : ";
            // 
            // label_circle_volume
            // 
            this.label_circle_volume.AutoSize = true;
            this.label_circle_volume.Location = new System.Drawing.Point(222, 429);
            this.label_circle_volume.Name = "label_circle_volume";
            this.label_circle_volume.Size = new System.Drawing.Size(41, 12);
            this.label_circle_volume.TabIndex = 29;
            this.label_circle_volume.Text = "부피 : ";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.label_circle_volume);
            this.Controls.Add(this.label_circle_area);
            this.Controls.Add(this.label_circle_round);
            this.Controls.Add(this.button16);
            this.Controls.Add(this.button15);
            this.Controls.Add(this.button14);
            this.Controls.Add(this.button13);
            this.Controls.Add(this.button12);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.textBox_r);
            this.Controls.Add(this.label_volume);
            this.Controls.Add(this.label_area);
            this.Controls.Add(this.textBox_z);
            this.Controls.Add(this.textBox_h);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.textBox_w);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.button11);
            this.Controls.Add(this.button10);
            this.Controls.Add(this.button9);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button8);
            this.Controls.Add(this.button7);
            this.Controls.Add(this.button6);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.Button button8;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button9;
        private System.Windows.Forms.Button button10;
        private System.Windows.Forms.Button button11;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox_w;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textBox_h;
        private System.Windows.Forms.TextBox textBox_z;
        private System.Windows.Forms.Label label_area;
        private System.Windows.Forms.Label label_volume;
        private System.Windows.Forms.TextBox textBox_r;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button button12;
        private System.Windows.Forms.Button button13;
        private System.Windows.Forms.Button button14;
        private System.Windows.Forms.Button button15;
        private System.Windows.Forms.Button button16;
        private System.Windows.Forms.Label label_circle_round;
        private System.Windows.Forms.Label label_circle_area;
        private System.Windows.Forms.Label label_circle_volume;
    }
}

