var ctx = document.getElementById("vitChart");
Chart.defaults.global.legend.display = false;
var data = {
    labels: [
        "Apfel",
        "Orange",
        "Brine",
        "Granatapfel"
    ],
    datasets: [
        {
            data: [40, 30, 15, 15],
            backgroundColor: [
                "#8D003B",
                "#D9005B",
                "#EC3B86",
                "#EC6AA1"
            ],
            hoverBackgroundColor: [
                "#8D003B",
                "#D9005B",
                "#EC3B86",
                "#EC6AA1"
            ]
        }]
};
var myPieChart = new Chart(ctx,{
    type: 'pie',
    data: data,
    animation:{
        animateScale:true
    }
});
