<?php

namespace App\Filament\Resources\LendResource\Pages;

use App\Filament\Resources\LendResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditLend extends EditRecord
{
    protected static string $resource = LendResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
