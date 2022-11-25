namespace useAPIJson
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
            this.components = new System.ComponentModel.Container();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.button1 = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.drwNo1DataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.drwNo2DataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.drwNo3DataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.drwNo4DataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.drwNo5DataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.drwNo6DataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.bnusNoDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.drwNoDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.drwNoDateDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.lottoBindingSource = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lottoBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.drwNo1DataGridViewTextBoxColumn,
            this.drwNo2DataGridViewTextBoxColumn,
            this.drwNo3DataGridViewTextBoxColumn,
            this.drwNo4DataGridViewTextBoxColumn,
            this.drwNo5DataGridViewTextBoxColumn,
            this.drwNo6DataGridViewTextBoxColumn,
            this.bnusNoDataGridViewTextBoxColumn,
            this.drwNoDataGridViewTextBoxColumn,
            this.drwNoDateDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.lottoBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(13, 13);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowTemplate.Height = 23;
            this.dataGridView1.Size = new System.Drawing.Size(970, 189);
            this.dataGridView1.TabIndex = 0;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(13, 220);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 1;
            this.button1.Text = "button1";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(115, 220);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 21);
            this.textBox1.TabIndex = 2;
            // 
            // drwNo1DataGridViewTextBoxColumn
            // 
            this.drwNo1DataGridViewTextBoxColumn.DataPropertyName = "drwNo1";
            this.drwNo1DataGridViewTextBoxColumn.HeaderText = "drwNo1";
            this.drwNo1DataGridViewTextBoxColumn.Name = "drwNo1DataGridViewTextBoxColumn";
            // 
            // drwNo2DataGridViewTextBoxColumn
            // 
            this.drwNo2DataGridViewTextBoxColumn.DataPropertyName = "drwNo2";
            this.drwNo2DataGridViewTextBoxColumn.HeaderText = "drwNo2";
            this.drwNo2DataGridViewTextBoxColumn.Name = "drwNo2DataGridViewTextBoxColumn";
            // 
            // drwNo3DataGridViewTextBoxColumn
            // 
            this.drwNo3DataGridViewTextBoxColumn.DataPropertyName = "drwNo3";
            this.drwNo3DataGridViewTextBoxColumn.HeaderText = "drwNo3";
            this.drwNo3DataGridViewTextBoxColumn.Name = "drwNo3DataGridViewTextBoxColumn";
            // 
            // drwNo4DataGridViewTextBoxColumn
            // 
            this.drwNo4DataGridViewTextBoxColumn.DataPropertyName = "drwNo4";
            this.drwNo4DataGridViewTextBoxColumn.HeaderText = "drwNo4";
            this.drwNo4DataGridViewTextBoxColumn.Name = "drwNo4DataGridViewTextBoxColumn";
            // 
            // drwNo5DataGridViewTextBoxColumn
            // 
            this.drwNo5DataGridViewTextBoxColumn.DataPropertyName = "drwNo5";
            this.drwNo5DataGridViewTextBoxColumn.HeaderText = "drwNo5";
            this.drwNo5DataGridViewTextBoxColumn.Name = "drwNo5DataGridViewTextBoxColumn";
            // 
            // drwNo6DataGridViewTextBoxColumn
            // 
            this.drwNo6DataGridViewTextBoxColumn.DataPropertyName = "drwNo6";
            this.drwNo6DataGridViewTextBoxColumn.HeaderText = "drwNo6";
            this.drwNo6DataGridViewTextBoxColumn.Name = "drwNo6DataGridViewTextBoxColumn";
            // 
            // bnusNoDataGridViewTextBoxColumn
            // 
            this.bnusNoDataGridViewTextBoxColumn.DataPropertyName = "bnusNo";
            this.bnusNoDataGridViewTextBoxColumn.HeaderText = "bnusNo";
            this.bnusNoDataGridViewTextBoxColumn.Name = "bnusNoDataGridViewTextBoxColumn";
            // 
            // drwNoDataGridViewTextBoxColumn
            // 
            this.drwNoDataGridViewTextBoxColumn.DataPropertyName = "drwNo";
            this.drwNoDataGridViewTextBoxColumn.HeaderText = "drwNo";
            this.drwNoDataGridViewTextBoxColumn.Name = "drwNoDataGridViewTextBoxColumn";
            // 
            // drwNoDateDataGridViewTextBoxColumn
            // 
            this.drwNoDateDataGridViewTextBoxColumn.DataPropertyName = "drwNoDate";
            this.drwNoDateDataGridViewTextBoxColumn.HeaderText = "drwNoDate";
            this.drwNoDateDataGridViewTextBoxColumn.Name = "drwNoDateDataGridViewTextBoxColumn";
            // 
            // lottoBindingSource
            // 
            this.lottoBindingSource.DataSource = typeof(useAPIJson.Lotto);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(995, 450);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.dataGridView1);
            this.Name = "Form1";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lottoBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn drwNo1DataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn drwNo2DataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn drwNo3DataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn drwNo4DataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn drwNo5DataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn drwNo6DataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn bnusNoDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn drwNoDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn drwNoDateDataGridViewTextBoxColumn;
        private System.Windows.Forms.BindingSource lottoBindingSource;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox textBox1;
    }
}

