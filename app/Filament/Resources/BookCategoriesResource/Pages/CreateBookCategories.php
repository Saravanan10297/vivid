<?php

namespace App\Filament\Resources\BookCategoriesResource\Pages;

use App\Filament\Resources\BookCategoriesResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateBookCategories extends CreateRecord
{
    protected static string $resource = BookCategoriesResource::class;
}
