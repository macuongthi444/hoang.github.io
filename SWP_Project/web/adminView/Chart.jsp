<%-- 
    Document   : Chart
    Created on : 21-02-2024, 07:49:31
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Chart Example</title>
  <!-- Thêm thư viện jQuery -->
  
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

        <script type="text/javascript">
            google.charts.load('current', {'packages': ['corechart']});
            google.charts.setOnLoadCallback(drawChart);
            function drawChart() {
                var data = new google.visualization.DataTable();
                data.addColumn('string', 'Hotel Name');
                data.addColumn('number', 'Number of Room Was Booked');


                // Sử dụng JSTL để truy cập dữ liệu từ "trend" và đưa vào JavaScript
            <c:forEach items="${listchart}" var="item">
                var name = "${item.roleName}";
                var total = ${item.number};
                data.addRow([name, total]);
            </c:forEach>

                var options = {
                    title: 'Hotel trend',
                    bars: 'vertical' // Để vẽ biểu đồ cột thay vì biểu đồ hình tròn
                };

                var chart = new google.visualization.ColumnChart(document.getElementById('columnchart'));

                chart.draw(data, options);
            }
        </script>
      
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Admin',     ${getRole1}],
          ['Customer',  ${getRole3}],
          ['Marketing',  ${getRole4}],
          ['Customer Service',  ${getRole5}]
          
        ]);

        var options = {
            title: 'User Active'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
</head>
<body>
  <!-- Định nghĩa một phần tử canvas để vẽ biểu đồ -->
   <section class="pt-10">  
            <center>
                <h1 class="pt-3 pb-3"><b>Hotel Statistic</b></h1>
            </center>
            <div id="columnchart" style="width: auto; height: 500px;"></div>
            <div id="piechart" style="width: auto; height: 500px;"></div>
        </section>

  <!-- Script JavaScript -->
  
</body>
</html>

