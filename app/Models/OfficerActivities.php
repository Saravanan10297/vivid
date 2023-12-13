<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class OfficerActivities extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = "aktivitas_petugas";
    protected $fillable = ["staff_id", "deskripsi_aktivitas", "waktu_aktivitas"];
}
