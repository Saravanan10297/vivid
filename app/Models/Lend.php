<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Lend extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = "peminjaman";
    protected $primaryKey = "loan_id";
    protected $fillable = ["member_id", "tanggal_peminjaman", "tanggal_pengembalian", "status", "category_id"];
}
