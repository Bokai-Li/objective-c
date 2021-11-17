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
    },
    {
        id:2,
        title: "YOASOBI - 夜に駆ける",
        description: "YOASOBI chapter 1 \"Racing into the Night\"",
        iframe:'<iframe width="560" height="315" src="https://www.youtube.com/embed/x8VYWazR5mE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
        thumbnail: "https://i.ytimg.com/vi/by4SYYWlhEs/maxresdefault.jpg"
    },
    {
        id:3,
        title: "ずっと真夜中でいいのに。『秒針を噛む』MV",
        description: "はじめまして。”ずっと真夜中でいいのに。”のACAね です。",
        iframe:'<iframe width="560" height="315" src="https://www.youtube.com/embed/iikBL2cyn4E" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
        thumbnail: "https://i.ytimg.com/vi/GJI4Gv7NbmE/maxresdefault.jpg"
    },
    {
        id:4,
        title: "yama『血流』MV",
        description: "♪yama 『血流』収録の1st ALBUM絶賛デジタル配信中♪",
        iframe:'<iframe width="560" height="315" src="https://www.youtube.com/embed/munngDZLwO4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
        thumbnail: "https://i.ytimg.com/vi/munngDZLwO4/maxresdefault.jpg"
    }
]

var comments = [
{
    username: "defaultUser",
    comment: "defaultComment",
}
];

app.post('/comments', function(req, res){
    var commentObj = req.body
    if (commentObj) {
        if (commentObj.username && commentObj.comment){
            comments.push(commentObj)
        }else{
            res.send("invalid")
        }
    }else{
        res.send("no body")
    }
    console.log(comments)
    res.send("success")
})

app.get('/tutorials', function(req, res) {
    console.log("GET from server");
    res.send(tutorials)
})

app.listen(6069);