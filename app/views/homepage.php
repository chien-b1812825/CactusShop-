<?php 
    $title = "Cactus House - Homepage";
    include_once './app/views/layouts/header.php';
?>
<div class="header">
            <div class="container">
                <div class="navbar">
                    <div class="row">
                    <div class="col-2">
                        <h1>Hệ thống bán lẻ xương rồng toàn quốc</h1>
                        <p>"Tìm được nguồn xương rồng giá rẻ, chất lượng chưa bao giờ là điều đơn giản"
                        </p>
                        <a href="products.php" class="btn">Mua ngay &#8594;</a>
                    </div>

                    <div class="col-2">
                        <img src="./storage/images/image1.png" height="600">
                    </div>
                </div>
            </div>
    </div>
</div>
<div class="categories">
            <!-- <div class="small-container">
                <div class="row">
                    <div class="col-3">
                        <img src="./storage/images/category-1.jpg">
                    </div>
                    <div class="col-3">
                        <img src="./storage/images/category-2.jpg">
                    </div>
                    <div class="col-3">
                        <img src="./storage/images/category-3.jpg">
                    </div>
            </div> -->
        </div>
        <div class="small-container">
            <h2 class="title" style="color:#2d3436;">Sản phẩm nổi bật</h2>
            <div class="row">
            <?php foreach ($products as $product):?>
                <div class="col-4">
                <a href="products-details.php?idproduct=<?php echo $product["product_id"] ?>"><img src="<?php echo $product["product_img"]?>"> </a>
                    <center><h4><?php echo $product["product_name"]?></h4>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <price><?php echo number_format($product["product_price"])?> đ</price></center>
                </div>
            <?php endforeach; ?>
            </div>
        </div>
        <div class="offer">
            <div class="small-container">
                <div class="row">
                <?php foreach ($product_1 as $pro):?>
                    <div class="col-2">
                            <a href="products-details.php?idproduct=<?php echo $pro["product_id"] ?>"><img style ="border-radius: 150px;" class="offer-img" src="<?php echo $pro["product_img"]?>"> </a>
                    </div>
                    <div class="col-2">
                        <p style="color: #2d3436; font-weight: bold;">Sản phẩm mới nhất</p>
                        <h1><?php echo $pro["product_name"]?></h1>
                        <small>
                            <?php echo $pro["product_describe"]?>
                        </small>
                        <p </p>
                        <a href="products-details.php?idproduct=<?php echo $pro["product_id"] ?>">
                        <button type="submit" style=" width:40%;border-radius: 15px; background-color: #d63031;" class="btn btn-info-base btn-sm">Xem chi tiết &#8594;</button>
                        </a>
                    </div>
                    <?php endforeach; ?>
                </div>

            </div>
        </div>
        <div class="brands">
            <div class="small-container">
                <div class="row">
                    <div class="col-5">
                        <img src="./storage/images/logo-ghn.png">
                    </div>
                    <div class="col-5">
                        <img src="./storage/images/logo-vnpost.png">
                    </div>
                    <div class="col-5">
                        <img src="./storage/images/logo-j&t.png">
                    </div>
                    <div class="col-5">
                        <img src="./storage/images/logo-viettelpost.png">
                    </div>
                    <div class="col-5">
                        <img src="./storage/images/logo-ghtk.png">
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php
    include_once './app/views/layouts/footer.php';

?>