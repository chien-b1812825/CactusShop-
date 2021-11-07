<?php
namespace App\Controllers;
use App\Models\Product;
class HomeController{
    public function index(){
        // return "Trang chu website";
        $products = Product::limit(4)->get();
        $product_1 = Product::limit(1)->get();
        include_once './app/views/homepage.php';
    }
    public function contacts(){
        include_once './app/views/customer/contact.php';
    }
}
?>