<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title><?php echo $title ?></title>
        <link href="./storage/css/style.css" rel="Stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
        <link href="../css.cart" rel="Stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <script src="js/jquery-1.11.1.min.js"></script>
        <style>
            .dropdown-content {
                display: none;
                position: absolute;
                background: #16a085;
                min-width: 100px;
                overflow: auto;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }
            .dropdown-content a {
                color: #ecf0f1;
                padding: 12px 6px;
                text-decoration: none;
                display: block;
            }
            #myDropdown{
                text-align: left;
            }
            #dropaccount{
                cursor: pointer;
            }
            .dropdown a:hover {
                background-color: #1abc9c;
            }
            .show {
                display: block;
            }
            </style>
    </head>

    <body>
        <div class="header">
            <div class="container">
                <div class="navbar">
                    <div class="logo">
                    <a href="home.php"><img src="./storage/images/logo2.png" width="100px"></a>
                    </div>
                    <nav>
                        <ul id="MenuItems">
                            <form action="../customer/search.php" method="GET">
                            <li><input style="background: #ecf0f1; border-radius: 50px;" type="text" size="25" name="search_kw" placeholder="Bạn muốn mua gì?" value="<?php empty($_REQUEST['search_kw']) || print $_REQUEST['search_kw']; ?>"></li>
                            <li><input style="background: #16a085; border-radius: 50px;" type="submit" size="3" value="&#9906">
                            <li><a href="./" style="color: #16a085; font-size: 14px; font-weight: bold;">TRANG CHỦ</a></li>
                            <li><a href="products" style="color: #16a085; font-size: 14px; font-weight: bold;">SẢN PHẨM</a></li>
                            <li><a href="contacts" style="color: #16a085; font-size: 14px; font-weight: bold;">LIÊN HỆ</a></li>
                            <!-- <li><a href="">Contact</a></li> -->
                            <li>
                                <?php
                                    // $username = "User";
                                    // if (isset($_SESSION['username'])) {
                                    //     $username = $_SESSION['username'];
                                    //     require_once '../handle/info-data.php'
                                ?>
                                <div class="dropdown">
                                    <span onclick="myFunction()" class="dropbtn" id="dropaccount"><?php //echo "$name";?></span>
                                    <div id="myDropdown" class="dropdown-content">
                                        <a href="../customer/info.php?name=<?php //$username?>">Thông tin cá nhân</a>
                                        <a href="../customer/cart.php">GIỎ HÀNG</a>
                                        <a href="../handle/logout.php">ĐĂNG XUẤT</a>
                                    </div>
                                </div>
                                <?php //}else{ ?>
                                    <div class="dropdown">
                                    <span onclick="myFunction()" class="dropbtn" id="dropaccount" style="color: #e74c3c; font-size: 14px; font-weight: bold;""><i class="fas fa-user"></i>Tài khoản</span>
                                    <div id="myDropdown" class="dropdown-content">
                                        <a href="../customer/account.php">Đăng nhập</a>
                                        <a href="../customer/account.php">Đăng ký</a>
                                    </div>
                                </div>
                                <?php //}?>

                            </li>
                            <?php
                                // $count=0;
                                // if(isset($_SESSION['procart'])){
                                //     $count=count($_SESSION['procart']);
                                // }
                            ?>
                            <img src="./storage/images/cart.png" width="20px"><?php //echo $count?>
                            <img src="./storage/images/menu.png" class="menu-icon" onclick="menutoggle()">
                        </ul>
                        </form>
                      </nav>


                </div>
            </div>
        </div>
<script>
/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
    }

    // Close the dropdown if the user clicks outside of it
    window.onclick = function(event) {
    if (!event.target.matches('.dropbtn')) {
        var dropdowns = document.getElementsByClassName("dropdown-content");
        var i;
        for (i = 0; i < dropdowns.length; i++) {
        var openDropdown = dropdowns[i];
        if (openDropdown.classList.contains('show')) {
            openDropdown.classList.remove('show');
        }
        }
    }
    }


</script>

        <script src="./storage/js/header.js"></script>
