/*var canvas1 = document.getElementById("season1"),
    ctx1 = canvas1.getContext("2d");

var canvas2 = document.getElementById("season2"),
    ctx2 = canvas2.getContext("2d");*/

var canvas = new Array;
var ctx = new Array;
for(var i = 0; i < 4; i++){
    canvas[i] = document.getElementById("season" + (i+1).toString()),
        ctx[i] = canvas[i].getContext("2d");
}

function makeSeason(ctx) {
    ctx.canvas.width = window.innerWidth/2;
    ctx.canvas.height = window.innerHeight/24;

    //Colour for rects
    ctx.fillStyle = "#d9d9d9";

    var rectStartPoint = 0;
    for(var i = 0; i < 12; i++) {

        var rectwidth = ctx.canvas.width/16;
        ctx.fillRect(rectStartPoint, 0, rectwidth, ctx.canvas.height);
        rectStartPoint += rectwidth + 5;

    }
}

makeSeason(ctx[0]);
makeSeason(ctx[1]);
makeSeason(ctx[2]);
makeSeason(ctx[3]);

