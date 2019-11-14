//https://www.dyclassroom.com/chartjs/chartjs-how-to-draw-line-graph-using-data-from-mysql-table-and-php
$(document).ready(function(){
    $.ajax({
        // path is relative to the html file
        url : "getWeatherDataAsJSON.php",
        type : "GET",
        success : function(data){
            console.log("in success function");
            //console.log(data);
            var id = [];
            var date_time = [];
            var temperature = [];
            var humidity = [];

            for(var i in data) {
                id.push("ID " + data[i].id);
                date_time.push(data[i].date_time);
                temperature.push(data[i].temperature);
                humidity.push(data[i].humidity);
            }

            var chartdata = {
                labels: date_time,
                datasets: [
                    {
                        label: "Temperature",
                        yAxisID: 'y-axis-temperature',
                        fill: false,
                        lineTension: 0,
                        backgroundColor: "rgba(59, 89, 152, 0.75)",
                        borderColor: "rgba(59, 89, 152, 1)",
                        pointHoverBackgroundColor: "rgba(59, 89, 152, 1)",
                        pointHoverBorderColor: "rgba(59, 89, 152, 1)",
                        data: temperature
                    },
                    {
                        label: "Humidity",
                        yAxisID: 'y-axis-humidity',
                        fill: false,
                        lineTension: 0,
                        backgroundColor: "rgba(29, 202, 255, 0.75)",
                        borderColor: "rgba(29, 202, 255, 1)",
                        pointHoverBackgroundColor: "rgba(29, 202, 255, 1)",
                        pointHoverBorderColor: "rgba(29, 202, 255, 1)",
                        data: humidity
                    }
                ]
            };

            var ctx = $("#mycanvas");

            var LineGraph = new Chart(ctx, {
                type: 'line',
                data: chartdata,
                options: {
                    scales: {
                        yAxes:  [
                            {
                                id: 'y-axis-temperature',
                                type: 'linear',
                                position: 'left'
                            },
                            {
                                id: 'y-axis-humidity',
                                type: 'linear',
                                position: 'right'
                            },
                            ]
                    }
                }
            });
        },
        error : function(data) {
            console.log("Error:");
            console.log(data);
        }
    });
});