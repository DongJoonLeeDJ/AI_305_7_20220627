using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloMyCSharp11
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            chart1.Series[0].Name = "롤 실력";
            chart1.Series[0].Points.AddXY("a", 2);
            chart1.Series[0].Points.AddXY("b", 3);
            chart1.Series[0].Points.AddXY("c", 4);
            chart1.Series[0].ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Pie;

            //두번째 차트
            chart2.Series[0].Points.AddXY(0.0, 10);
            chart2.Series[0].Points.Add(new double[] { 2.0 });
            chart2.Series[0].Name = "level";
            chart2.Series.Add("data");
            //chart2.Series[1].ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.StackedBar;
            chart2.Series[0].Points.Add(new double[] { 5.0 });


            chart2.Series[1].Points.Add(new double[] { 20.0 });
            chart2.Series[1].Points.Add(new double[] { 50.0 });
            chart2.Series[1].Points.Add(new double[] { 15.0 });
              chart2.Series[0].Points[0].AxisLabel = "이동준";
            chart2.Series[0].Points[1].AxisLabel = "이용희";
            chart2.Series[0].Points[2].AxisLabel = "오세룡";
            //chart2.Series[0].ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.StackedColumn;
            //chart2.Series[1].ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.StackedColumn;

            chart2.Series[0].Points[0].Label = chart2.Series[0].Points[0].YValues[0] + "";
            chart2.Series[1].Points[0].Label = chart2.Series[1].Points[0].YValues[0] + "";

            chart2.Series[0].Points[1].Label = chart2.Series[0].Points[1].YValues[0] + "";
            chart2.Series[1].Points[1].Label = chart2.Series[1].Points[1].YValues[0] + "";
            
            chart2.Series[0].Points[2].Label = chart2.Series[0].Points[2].YValues[0] + "";
            chart2.Series[1].Points[2].Label = chart2.Series[1].Points[2].YValues[0] + "";




            //세번째 차트
            chart3.ChartAreas[0].AxisX.LabelStyle.Interval = 1;
            for(int i = 0; i<20; i++)
            {
                //Series[0],Series[1] 말고
                //Series["축이름"]을 넣을 수도 있다.
                chart3.Series["Series1"].Points.AddXY(i, i + 10);
            }
        }
    }
}
