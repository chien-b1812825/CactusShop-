<?php
namespace App\Models;
use \Illuminate\Database\Eloquent\Model;
class Category extends Model{
    protected $table = "category";
    protected $primaryKey = 'category_id';
    // public $incrementing = false; 
    // protected $ketType ='string';
    public $timestamps = false;
}
?>