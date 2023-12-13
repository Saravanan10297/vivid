<?php

namespace App\Filament\Resources\OfficerActivitiesResource\Pages;

use App\Filament\Resources\OfficerActivitiesResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditOfficerActivities extends EditRecord
{
    protected static string $resource = OfficerActivitiesResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
