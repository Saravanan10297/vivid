<?php

namespace App\Filament\Resources\OfficerActivitiesResource\Pages;

use App\Filament\Resources\OfficerActivitiesResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListOfficerActivities extends ListRecords
{
    protected static string $resource = OfficerActivitiesResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
