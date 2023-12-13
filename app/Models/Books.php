<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Books extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = "buku";
    protected $primaryKey = "book_id";
    protected $fillable = ["book_id", "judul", "pengarang", "tahun_terbit", "ISBN", "category_id"];
}
