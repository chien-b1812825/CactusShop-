<?php
namespace App\Controllers;
use App\Models\Product;
use App\Models\Category;
class ProductController{
    public function index(){
        // return "Trang chu website";
        $products = Product::all();
        $categorys = Category::all();
        include_once './app/views/customer/products-list.php';
    }
    public function detail($id){
        $product = Product::find($id);
        include_once './app/views/customer/detail-product.php';
    }
}
?>