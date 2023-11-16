<?php

namespace App\Filament\Resources\BookCategoriesResource\Pages;

use App\Filament\Resources\BookCategoriesResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListBookCategories extends ListRecords
{
    protected static string $resource = BookCategoriesResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
