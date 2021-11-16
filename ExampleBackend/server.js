var express = require('express');
var bodyParser = require('body-parser');
var app = express();

// middleware
app.all('/*', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Acess-Control-Allow-Headers", "X-Requested-With", "Content-Type, Accept");
    res.header("Access-Control-Allow-Methods", "POST", "GET");
    next();
});

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));

var tutorials = [
    {
        id:1,
        title: "King Gnu - Boy",
        description: "「BOY」のストリーミング/ダウンロードはコチラ",
        iframe:'<iframe width="560" height="315" src="https://www.youtube.com/embed/n0QNaym0jDI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
        thumbnail: "https://static.billboard.com/files/2021/10/king-gnu-boy-2021-billboard-1548-1634598672-compressed.png"
    }
]

app.get('/tutorials', function(req, res) {
    console.log("GET from server");
    res.send(tutorials)
})

app.listen(6069);