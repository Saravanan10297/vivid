<?php

namespace App\Filament\Widgets;

use App\Models\Member;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Builder;
use Filament\Widgets\TableWidget as BaseWidget;

class LatestMembers extends BaseWidget
{

    protected static ?int $sort = 2;

    protected int | string | array $columnSpan = 'full';

    protected function getTableQuery(): Builder
    {
        return Member::query() 
        ->latest()
        ->take(3);
    }

    protected function getTableColumns(): array 
    {
        return [
            TextColumn::make('id'),
            TextColumn::make('nim')->sortable()->searchable(),
            TextColumn::make('nama'),
            TextColumn::make('fakultas'),
            TextColumn::make('alamat'),
            TextColumn::make('nomor_telepon'),
            TextColumn::make('email'),
        ];
    }

    protected function isTablePaginationEnabled(): bool
    {
        return false;
    }
}
