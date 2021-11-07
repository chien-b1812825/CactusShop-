<?php 
    $title = "Cactus House - All Product";
    include_once './app/views/layouts/header.php';
?>
<div class="small-container single-product">
    <form id="DetailForm" method="post" action="../handle/add-cart-data.php">
        <div class="row">
            <div class="col-2">
                <img src="<?php echo $product['product_img'];?>" width="100%" id="ProductImg">
            </div>
            <div class="col-2">
                <p style="font-weight: bold; font-size: 30px;"> <?php echo $product['product_name']; ?></p>
                <h4 style="color: #00b894; font-size: 30px; font-weight: bold;"><?php echo number_format($product['product_price']); ?> đ</h4>
                <br> </br>
                <p style="font-size: 20px;"><?php echo $product['product_describe']; ?></p>
                <br></br>
                <?php if($product['product_quanlity']>0){?>
                    <h4>Tình trạng: Còn <?php echo $product['product_quanlity'];?> sản phẩm</h4> 
                <h4 style="font-weight: bold;">Số lượng:</h4>
                <input type="number" name="quanlity" value="1" min="1">
                <!-- <a href="" class="btn">Add To Cart</a> -->
                <input type="hidden" name="id" value="<?php echo $id?>">
                <input type="hidden" name="product_name" value="<?php echo $product['product_name']; ?>">
                <input type="hidden" name="product_price" value=<?php echo $product['product_price']; ?>>
                <button type="submit" name="add" style=" width:40%;border-radius: 15px; background-color: #d63031;" class="btn btn-info btn-sm">Thêm vào giỏ hàng</button>
                <?php }else{ ?>
                    <h4>Tình trạng: <?php echo "HẾT HÀNG";} ?> </h4>
            </div>
            </div>
        </from>
    </div>
<?php
    include_once './app/views/layouts/footer.php';
?>