<!DOCTYPE html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
    var fruits= [];
    function mySelect(x) {
        if(document.getElementById(x).innerHTML == "select"){
            document.getElementById(x).innerHTML = "SELECTED";
            document.getElementById(x).className="button is-primary is-small is-warning is-pulled-right";
            fruits.push(x);
        }
        else {
            document.getElementById(x).innerHTML = "select";
            document.getElementById(x).className="button is-primary is-small is-pulled-right" ;
            var index = fruits.indexOf(x);
            if (index > -1) {
                fruits.splice(index, 1);
            }
        }
    }
    function myFinalSelect() {
        if(fruits.length == 0)
        {
            alert("SELECT AT LEAST ONE ROOM");
        }
        else
        {
            fruits.sort();
            alert(fruits);
            var myJSON = JSON.stringify(fruits);
            window.location = "payment.php?rooms=" + myJSON;
        }
    }
    function Redirect() {
        window.location="bookingdates.php";
    }

</script>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ROOM TYPES</title>
    <link rel="stylesheet" type="text/css" href="css/grid-gallery.css">
</head>
<body>
<div class="container section">
    <div class="container is-fluid ">
        <figure class="image is-128x128 ">
            <img src="images/DC.png" alt="LOGO OF HOTEL WEBSITE">
            <figcaption><i>Travellers Home</i></figcaption>
        </figure>
    </div>
    <hr>
    <div class="columns section">
        <div class="column is-4">
            <div class="title">Rooms Available</div>
        </div>
    </div>
    <div class="field level-item is-grouped is-grouped-centered">
        <p class="control">
            <a href="room_select.php" class="button is-light">
                Back
            </a>
        </p>
        <a>      </a>
        <div class="control">
            <button class="button is-info" onclick="myFinalSelect()">SUBMIT</button>
        </div>
    </div>
    <hr>
    <footer class="footer">
        <div class="container">
            <div class="content has-text-centered">
                 <p>
                <strong>DC hotels</strong> by <a href="">kushagra bhargav</a>. The source code is licensed
                <a href="">VIT</a>. The website content
                is licensed.
            </p>
                <p>
                    <a class="icon" href="https://github.com/">
                        <i class="fa fa-github"></i>
                    </a>
                </p>
            </div>
        </div>
    </footer>
    <script type="text/javascript" src="js/bulma.js"></script>
</body>
</html>