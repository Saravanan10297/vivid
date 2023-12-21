<?php

namespace App\Filament\Resources;

use App\Filament\Resources\OfficerActivitiesResource\Pages;
use App\Filament\Resources\OfficerActivitiesResource\RelationManagers;
use App\Models\OfficerActivities;
use Faker\Provider\Text;
use Filament\Forms;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\TimePicker;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Facades\DB;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;

class OfficerActivitiesResource extends Resource
{
    protected static ?string $model = OfficerActivities::class;

    protected static ?string $navigationGroup = 'Officer Management';

    protected static ?string $navigationIcon = 'feathericon-activity';

    public static function form(Form $form): Form
    {

        $staffIDOptions = [];
  
        $staffIDData = DB::table('petugas_perpustakaan')->get();

        foreach ($staffIDData as $row) {
            $staffIDOptions[$row->nama] = $row->staff_id . ' - ' . $row->nama;
        }

        return $form
            ->schema([
                Section::make()
                    ->schema([
                        Select::make('staff_id')->options($staffIDOptions),
                        TextInput::make("deskripsi_aktivitas")->required(),
                        TimePicker::make("waktu_aktivitas")->required(),
                    ])
                    ->columns(2),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make("activity_id")->sortable()->searchable(),
                TextColumn::make('staff_id')->sortable()->searchable(),
                TextColumn::make('deskripsi_aktivitas'),
                TextColumn::make('waktu_aktivitas'),
            ])
            ->filters([
                Tables\Filters\TrashedFilter::make(),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
                Tables\Actions\ForceDeleteAction::make(),
                Tables\Actions\RestoreAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                    Tables\Actions\ForceDeleteBulkAction::make(),
                    Tables\Actions\RestoreBulkAction::make(),
                    ExportBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListOfficerActivities::route('/'),
            'create' => Pages\CreateOfficerActivities::route('/create'),
            'edit' => Pages\EditOfficerActivities::route('/{record}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }
}
