<?php

namespace App\Filament\Resources;

use Filament\Tables;
use App\Models\Officer;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Illuminate\Support\Facades\DB;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Section;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\OfficerResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;

class OfficerResource extends Resource
{
    protected static ?string $model = Officer::class;

    protected static ?string $navigationGroup = 'Officer Management';

    protected static ?string $navigationIcon = 'phosphor-user-circle-gear-bold';

    public static function form(Form $form): Form
    {

        $jabatanOptions = [];
  
        $jabatanData = DB::table('jabatan')->get();

        foreach ($jabatanData as $row) {
            $jabatanOptions[$row->nama_jabatan . " - " . $row->kode_jabatan] = $row->kode_jabatan . ' - ' . $row->nama_jabatan;
        }

        return $form
            ->schema([
                Section::make('Make New Officer')
                    ->schema([
                        TextInput::make('staff_id')->required(),
                        TextInput::make('nama')->required(),
                        Select::make('jabatan')->options($jabatanOptions),
                        TextInput::make('nomor_telepon')->required()->numeric(),
                        TextInput::make('email')->required()->email()->autocomplete(),
                    ])
                    ->columns(2),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('staff_id')->sortable()->searchable(),
                TextColumn::make('nama'),
                TextColumn::make('jabatan'),
                TextColumn::make('nomor_telepon'),
                TextColumn::make('email'),
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
            'index' => Pages\ListOfficers::route('/'),
            'create' => Pages\CreateOfficer::route('/create'),
            'edit' => Pages\EditOfficer::route('/{record}/edit'),
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
