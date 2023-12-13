<?php

namespace App\Filament\Resources\LendDetailResource\Pages;

use App\Filament\Resources\DetailResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListLendDetails extends ListRecords
{
    protected static string $resource = DetailResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
