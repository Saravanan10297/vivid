<?php

namespace App\Filament\Resources;

use App\Filament\Resources\LendDetailResource\Pages;
use App\Filament\Resources\LendDetailResource\RelationManagers;
use App\Models\Detail;
use Filament\Forms;
use Filament\Forms\Components\Select;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Facades\DB;

class DetailResource extends Resource
{
    protected static ?string $model = Detail::class;

    protected static ?string $navigationIcon = 'heroicon-o-ellipsis-horizontal-circle';

    public static function form(Form $form): Form
    {
        $bookCategoriesOptions = [];

        $bookCategoriesData = DB::table('kategori_buku')->get();

        foreach ($bookCategoriesData as $row) {
            $bookCategoriesOptions[$row->category_id] = $row->category_id . ' - ' . $row->nama_kategori;
        }

        $bookIdOptions = [];

        $bookIdData = DB::table('buku')->get();

        foreach ($bookIdData as $row) {
            $bookIdOptions[$row->book_id] = $row->book_id . ' - ' . $row->judul;
        }

        $bookNIMOptions = [];

        $bookNIMData = DB::table('anggota_perpustakaan')->get();

        foreach ($bookNIMData as $row) {
            $bookNIMOptions[$row->nim] = $row->nim . ' - ' . $row->nama;
        }


        return $form
            ->schema([
                Section::make()
                    ->schema([
                        TextInput::make('loan_id')->required(),
                        Select::make("id_member")->options($bookNIMOptions),
                        Select::make('book_id')->options($bookIdOptions),
                        TextInput::make('jumlah')->required(),
                        Select::make('category_id')->options($bookCategoriesOptions),
                    ])
                    ->columns(2),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('detail_id')->sortable()->searchable(),
                TextColumn::make("id_member"),
                TextColumn::make('loan_id'),
                TextColumn::make('book_id'),
                TextColumn::make('jumlah'),
                TextColumn::make('category_id'),
            ])
            ->filters([
                Tables\Filters\TrashedFilter::make()
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
            'index' => Pages\ListLendDetails::route('/'),
            'create' => Pages\CreateLendDetail::route('/create'),
            'edit' => Pages\EditLendDetail::route('/{record}/edit'),
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
