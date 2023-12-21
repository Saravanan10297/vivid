<?php

namespace App\Filament\Widgets;

use App\Models\Lend;
use App\Models\Member;
use App\Models\Officer;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class StatsOverview extends BaseWidget
{
    protected static ?int $sort = 1;

    protected function getStats(): array
    {
        return [
            Stat::make('Total Members', Member::count()),
            Stat::make('Total Books Lend', Lend::count()),
            Stat::make('Total Officer', Officer::count()),
        ];
    }
}
