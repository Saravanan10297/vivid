<?php

namespace App\Filament\Resources\LendDetailResource\Pages;

use App\Filament\Resources\DetailResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditLendDetail extends EditRecord
{
    protected static string $resource = DetailResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
