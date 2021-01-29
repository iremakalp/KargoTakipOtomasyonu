
namespace KargoTakipOtomasyonu
{
    partial class Form2
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            this.label7 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.aciklamaTxt = new System.Windows.Forms.TextBox();
            this.tarihTxt = new System.Windows.Forms.TextBox();
            this.alıcıNoTxt = new System.Windows.Forms.TextBox();
            this.kaydetBtn = new System.Windows.Forms.Button();
            this.subelerData = new System.Windows.Forms.DataGridView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.subelerData)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label7.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label7.Location = new System.Drawing.Point(23, 188);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(62, 16);
            this.label7.TabIndex = 22;
            this.label7.Text = "Alıcı No";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label5.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label5.Location = new System.Drawing.Point(23, 224);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(44, 16);
            this.label5.TabIndex = 20;
            this.label5.Text = "Tarih";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label4.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label4.Location = new System.Drawing.Point(23, 262);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(93, 16);
            this.label4.TabIndex = 19;
            this.label4.Text = "İade Sebebi";
            // 
            // aciklamaTxt
            // 
            this.aciklamaTxt.Location = new System.Drawing.Point(161, 258);
            this.aciklamaTxt.Name = "aciklamaTxt";
            this.aciklamaTxt.Size = new System.Drawing.Size(100, 20);
            this.aciklamaTxt.TabIndex = 18;
            // 
            // tarihTxt
            // 
            this.tarihTxt.Location = new System.Drawing.Point(161, 220);
            this.tarihTxt.Name = "tarihTxt";
            this.tarihTxt.Size = new System.Drawing.Size(100, 20);
            this.tarihTxt.TabIndex = 17;
            // 
            // alıcıNoTxt
            // 
            this.alıcıNoTxt.Location = new System.Drawing.Point(161, 184);
            this.alıcıNoTxt.Name = "alıcıNoTxt";
            this.alıcıNoTxt.Size = new System.Drawing.Size(100, 20);
            this.alıcıNoTxt.TabIndex = 16;
            // 
            // kaydetBtn
            // 
            this.kaydetBtn.BackColor = System.Drawing.Color.Coral;
            this.kaydetBtn.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.kaydetBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.kaydetBtn.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.kaydetBtn.Location = new System.Drawing.Point(214, 342);
            this.kaydetBtn.Name = "kaydetBtn";
            this.kaydetBtn.Size = new System.Drawing.Size(107, 29);
            this.kaydetBtn.TabIndex = 27;
            this.kaydetBtn.Text = "Talep Oluştur";
            this.kaydetBtn.UseVisualStyleBackColor = false;
            this.kaydetBtn.Click += new System.EventHandler(this.kaydetBtn_Click);
            // 
            // subelerData
            // 
            this.subelerData.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.ColumnHeader;
            this.subelerData.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllHeaders;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.subelerData.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.subelerData.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            dataGridViewCellStyle5.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.subelerData.DefaultCellStyle = dataGridViewCellStyle5;
            this.subelerData.Location = new System.Drawing.Point(6, 30);
            this.subelerData.Name = "subelerData";
            dataGridViewCellStyle6.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            dataGridViewCellStyle6.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.Color.Coral;
            this.subelerData.RowsDefaultCellStyle = dataGridViewCellStyle6;
            this.subelerData.Size = new System.Drawing.Size(305, 116);
            this.subelerData.TabIndex = 28;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.subelerData);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(3, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(318, 154);
            this.groupBox1.TabIndex = 29;
            this.groupBox1.TabStop = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label1.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label1.Location = new System.Drawing.Point(10, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(62, 16);
            this.label1.TabIndex = 30;
            this.label1.Text = "Şubeler";
            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.CadetBlue;
            this.ClientSize = new System.Drawing.Size(333, 383);
            this.Controls.Add(this.kaydetBtn);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.aciklamaTxt);
            this.Controls.Add(this.tarihTxt);
            this.Controls.Add(this.alıcıNoTxt);
            this.Controls.Add(this.groupBox1);
            this.Name = "Form2";
            this.Text = "İade Talep Formu";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form2_FormClosing);
            this.Load += new System.EventHandler(this.Form2_Load);
            ((System.ComponentModel.ISupportInitialize)(this.subelerData)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox aciklamaTxt;
        private System.Windows.Forms.TextBox tarihTxt;
        private System.Windows.Forms.TextBox alıcıNoTxt;
        private System.Windows.Forms.Button kaydetBtn;
        private System.Windows.Forms.DataGridView subelerData;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label1;
    }
}