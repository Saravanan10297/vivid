<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Detail extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = "detail_peminjaman";
    protected $primaryKey = "detail_id";
    protected $fillable = ["loan_id", "id_member", "book_id", "jumlah", "category_id"];
}
