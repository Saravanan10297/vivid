<?php

namespace App\Filament\Resources;

use App\Filament\Resources\BooksResource\Pages;
use App\Filament\Resources\BooksResource\RelationManagers;
use App\Models\Books;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Illuminate\Support\Facades\DB;

class BooksResource extends Resource
{
    protected static ?string $model = Books::class;

    protected static ?string $navigationIcon = 'heroicon-o-book-open';

    public static function form(Form $form): Form
    {
        $bookCategoriesOptions = [];

        $bookCategoriesData = DB::table('kategori_buku')->get();

        foreach ($bookCategoriesData as $row) {
            $bookCategoriesOptions[$row->category_id] = $row->category_id . ' - ' . $row->nama_kategori;
        }

        $pengarangOptions = [];

        $pengarangData = DB::table("pengarang")->get();

        foreach ($pengarangData as $row) {
            $pengarangOptions[$row->kode_pengarang] = $row->nama_pengarang;
        }

        return $form
            ->schema([
                Section::make()
                ->schema([
                    TextInput::make("judul")->required(),
                    Select::make("pengarang")->options($pengarangOptions),
                    TextInput::make("tahun_terbit")->required(),
                    TextInput::make("ISBN")->required(),
                    Select::make("category_id")->options($bookCategoriesOptions),
                ])
                ->columns(2)
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make("book_id")->searchable()->sortable(),
                TextColumn::make('judul'),
                TextColumn::make('pengarang'),
                TextColumn::make("tahun_terbit"),
                TextColumn::make("ISBN"),
                TextColumn::make("category_id")
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
            'index' => Pages\ListBooks::route('/'),
            'create' => Pages\CreateBooks::route('/create'),
            'edit' => Pages\EditBooks::route('/{record}/edit'),
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
