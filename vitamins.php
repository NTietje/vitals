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
                    <li class="active"><a href="#">Vitamine<span class="sr-only">(current)</span></a></li>
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
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
                    <div class="flip">
                        <div class="card">
                            <div class="face front">
                                <div class="box maingreen">
                                    <h2>A</h2>
                                </div>
                            </div>
                            <div class="face back">
                                <div class="box maingray greenborder">
                                    <p>Retinol</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
                    <div class="flip">
                        <div class="card">
                            <div class="face front">
                                <div class="box maingreen">
                                    <h2>B1</h2>
                                </div>
                            </div>
                            <div class="face back">
                                <div class="box maingray greenborder">
                                    <p>Thiamin</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
                    <div class="flip">
                        <div class="card">
                            <div class="face front">
                                <div class="box maingreen">
                                    <h2>B2</h2>
                                </div>
                            </div>
                            <div class="face back">
                                <div class="box maingray greenborder">
                                    <p>Riboflavin</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
                    <div class="flip">
                        <div class="card">
                            <div class="face front">
                                <div class="box maingreen">
                                    <h2>B3</h2>
                                </div>
                            </div>
                            <div class="face back">
                                <div class="box maingray greenborder">
                                    <p>Niacin</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
                    <div class="flip">
                        <div class="card">
                            <div class="face front">
                                <div class="box maingreen">
                                    <h2>B5</h2>
                                </div>
                            </div>
                            <div class="face back">
                                <div class="box maingray greenborder">
                                    <p>Pantothensäure</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
                    <div class="flip">
                        <div class="card">
                            <div class="face front">
                                <div class="box maingreen">
                                    <h2>B6</h2>
                                </div>
                            </div>
                            <div class="face back">
                                <div class="box maingray greenborder">
                                    <p>Pyridoxin</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
                    <div class="flip">
                        <div class="card">
                            <div class="face front">
                                <div class="box maingreen">
                                    <h2>B7</h2>
                                </div>
                            </div>
                            <div class="face back">
                                <div class="box maingray greenborder">
                                    <p>Biotin</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
                    <div class="flip">
                        <div class="card">
                            <div class="face front">
                                <a href="/vitals/vitamin-x.php?vit=B9">
                                    <div class="box maingreen">
                                        <h2>B9</h2>
                                    </div>
                                <a/>
                            </div>
                            <div class="face back">
                                <a href="/vitals/vitamin-x.php?vit=B9">
                                    <div class="box maingray greenborder">
                                        <p>Folsäure</p>
                                    </div>
                                <a/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
                    <div class="flip">
                        <div class="card">
                            <div class="face front">
                                <a href="/vitals/vitamin-x.php?vit=C">
                                    <div class="box maingreen">
                                        <h2>C</h2>
                                    </div>
                                <a/>
                            </div>
                            <div class="face back">
                                <a href="/vitals/vitamin-x.php?vit=C">
                                    <div class="box maingray greenborder">
                                        <p>Ascorbinsäure<p/>
                                    </div>
                                <a/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
                    <div class="flip">
                        <div class="card">
                            <div class="face front">
                                <div class="box maingreen">
                                    <h2>E</h2>
                                </div>
                            </div>
                            <div class="face back">
                                <div class="box maingray greenborder">
                                    <p>Tocopherol</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
                    <div class="flip">
                        <div class="card">
                            <div class="face front">
                                <div class="box maingreen">
                                    <h2>K</h2>
                                </div>
                            </div>
                            <div class="face back">
                                <div class="box maingray greenborder">
                                    <p>Phyllochinon</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $('.flip').on('mouseenter', function(){
                $(this).find('.card').toggleClass('flipped');
            });
            $('.flip').on('mouseleave', function(){
                $(this).find('.card').toggleClass('flipped');
            });
        </script>
        <div class="col-md-2"></div>
    </div>
</div>
</body>
</html>