<?php
namespace App\Controllers;

use App\Models\Category;
class CategoryController{
    public function addata(){
        // return "Trang chu website";
        // $products = Product::all();
        // $categorys = Category::all();
        // include_once './app/views/detail-product.php';
        $name = "Ly uong nuoc";
        $model = new Category;
        $model->category_name = $name;
        $model->save();

    }

    public function editdata(){
        // return "Trang chu website";
        // $products = Product::all();
        // $categorys = Category::all();
        // include_once './app/views/detail-product.php';
        $id = 6;
        $name = "Ly an";
        $model = Category::find($id);
        $model->category_name = $name;
        $model->save();

    }

    public function deletedata(){
        // return "Trang chu website";
        // $products = Product::all();
        // $categorys = Category::all();
        // include_once './app/views/detail-product.php';
        $id = 6;
        Category::destroy($id);

    }
    public function detail(){
        return "TRang chi tiet";
    }
}
?>