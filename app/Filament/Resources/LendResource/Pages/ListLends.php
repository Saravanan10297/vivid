<?php

namespace App\Filament\Resources\LendResource\Pages;

use App\Filament\Resources\LendResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListLends extends ListRecords
{
    protected static string $resource = LendResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
