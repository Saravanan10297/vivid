<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Member extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = 'anggota_perpustakaan';
    protected $fillable = ['nim', 'nama', 'alamat', 'nomor_telepon', 'email', 'fakultas'];
}
