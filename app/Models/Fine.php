<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Fine extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = "denda";
    protected $primaryKey = "fine_id";
    protected $fillable = ["loan_id", "jumlah_denda", "tanggal_pembayaran"];
}
