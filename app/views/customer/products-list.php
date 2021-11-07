<?php 
    $title = "Cactus House - All Product";
    include_once './app/views/layouts/header.php';
?>
<div class="small-container">
            <div class="row row-2">
                <h2>Tất cả sản phẩm</h2>
                <form action="" method="post">
                <select name="list" onchange="this.form.submit()">
                    <option value="product_name"> Mặc định </option>
                    <option value="product_price">Sắp xếp theo Giá </option>
                    <option value="category_id">Sắp xếp theo Loại</option>

                </select>
                </form>

            <?php
                $tmp = "product_name";
                if(isset($_POST["list"])) {
                     $tmp = $_POST["list"];
                }
            ?>
            </div>
            <div class="row">
            <?php foreach ($products as $product):?>
                <div class="col-4">
                <a href="products-details?idproduct=<?php echo $product["product_id"] ?>"><img src="<?php echo $product["product_img"]?>"> </a>
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
            <?php
                // page_nav_links_product($paging);
            ?>



</div>

<?php
    include_once './app/views/layouts/footer.php';

?>