<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Vitals</title>
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/bootstrap.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.3.0/Chart.bundle.min.js"></script>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top top">
    <div class="container-fluid">

        <div class="col-md-1"></div>
        <div class="col-md-10">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/vitals">VITALS</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="/vitals/vitamins.php">Vitamine <span class="sr-only">(current)</span></a></li>
                    <li><a href="/vitals/minerals.php">Mineralstoffe & Spurenelemente</a></li>
                    <li><a href="/vitals/Naehrstoffrechner.php">Nährstoffrechner</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div>
        <div class="col-md-1"></div>
    </div><!-- /.container-fluid -->
</nav>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-4">

                        <?php
                            //Data for Connection
                            $servername = "localhost";
                            $username = "root";
                            $password = "";
                            $dbname = "vitalsdb";

                            //Get witch Vitamin should be shown, saved in the vit variable, given from the previous page in the URL
                            $vit = $_GET["vit"];

                            // Create connection to db
                            $con = new mysqli($servername, $username, $password, $dbname);

                            // Check connection
                            if ($con->connect_error) {
                                die("Connection failed: " . $con->connect_error);
                            }

                            //sql query for the information of the vitamin/mineral
                            $sql = "SELECT * FROM zusatzinfo WHERE inhaltsstoff = '$vit'";
                            $result = mysqli_query($con, $sql);

                            //Heading
                            echo "<h2>Vitamin $vit</h2>";

                            //Content
                            while($row = $result->fetch_row()) {
                                echo $row[2];
                            }
                            $result->close();


                            //sql query for the fruitdata
                            $sql = "SELECT * FROM fruechte ORDER BY C DESC LIMIT 4";
                            $result = mysqli_query($con, $sql);

                            //Fruittest
                            $fruits = array();
                            $fruitdata = array();

                            while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                                //print_r( $row );
                                $fruits[] = $row['Fruchtname'];
                                $fruitdata[] = $row['C'];
                            }

                            /*for ($i = 0; $i < 4; $i++) {
                                echo "Frucht";
                                echo $fruits[$i];
                                echo "Gehalt";
                                echo $fruitdata[$i];
                            }*/

                            $result->close();

                            $con->close();

                        ?>

                </div>
                <div class="col-md-5">
                    <canvas id="vitChart" width="100" height="100"></canvas>
                </div>
                <div class="col-md-3">

                    <div class="fruitbox">
                        <div class="col-xs-6 col-md-12 col-lg-12">
                            <div class="fruitcolorbox border5">
                                <?php
                                    $fruitname = $fruits[0] . ".png";
                                    echo '<img src='.$fruitname.' style="width:50%;height:50%;max-width:200px;max-height:200px">';
                                ?>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-12 col-lg-12">
                            <div class="fruitcolorbox border4">
                                <?php
                                $fruitname = $fruits[1] . ".png";
                                echo '<img src='.$fruitname.' style="width:50%;height:50%;max-width:200px;max-height:200px">';
                                ?>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-12 col-lg-12">
                            <div class="fruitcolorbox border3">
                                <?php
                                $fruitname = $fruits[2] . ".png";
                                echo '<img src='.$fruitname.' style="width:50%;height:50%;max-width:200px;max-height:200px">';
                                ?>
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-12 col-lg-12">
                            <div class="fruitcolorbox border2">
                                <?php
                                $fruitname = $fruits[3] . ".png";
                                echo '<img src='.$fruitname.' style="width:50%;height:50%;max-width:200px;max-height:200px">';
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <script src="js/vitaminChart.js"></script>
        <div class="col-md-2"></div>
    </div>
</div>
</body>
</html>