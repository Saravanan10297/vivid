<?php

namespace App\Filament\Resources;

use App\Models\Lend;
use Filament\Tables;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Illuminate\Support\Facades\DB;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Section;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Illuminate\Database\Eloquent\Builder;
use Filament\Forms\Components\DateTimePicker;
use App\Filament\Resources\LendResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;

class LendResource extends Resource
{
    protected static ?string $model = Lend::class;

    protected static ?string $navigationGroup = 'Books Management';

    protected static ?string $navigationIcon = 'heroicon-o-folder-arrow-down';

    public static function form(Form $form): Form
    {

        $memberIDOptions = [];
  
        $memberIDData = DB::table('anggota_perpustakaan')->get();

        foreach ($memberIDData as $row) {
            $memberIDOptions[$row->id] = $row->id . ' - ' . $row->nim;
        }

        $kategoriBukuOptions = [];
  
        $kategoriBukuData = DB::table('kategori_buku')->get();

        foreach ($kategoriBukuData as $row) {
            $kategoriBukuOptions[$row->category_id . " - " . $row->nama_kategori] = $row->category_id . ' - ' . $row->nama_kategori;
        }


        return $form
            ->schema([
                Section::make()
                    ->schema([
                        Select::make('member_id')->options($memberIDOptions),
                        DateTimePicker::make('tanggal_peminjaman')->required(),
                        DateTimePicker::make('tanggal_pengembalian')->required(),
                        TextInput::make('status')->required(),
                        Select::make('category_id')->options($kategoriBukuOptions),
                    ])
                    ->columns(2),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('loan_id')->sortable()->searchable(),
                TextColumn::make('member_id'),
                TextColumn::make('tanggal_peminjaman'),
                TextColumn::make('tanggal_pengembalian'),
                TextColumn::make('status'),
                TextColumn::make('category_id'),
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
            'index' => Pages\ListLends::route('/'),
            'create' => Pages\CreateLend::route('/create'),
            'edit' => Pages\EditLend::route('/{record}/edit'),
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
