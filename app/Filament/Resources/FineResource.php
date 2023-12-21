<?php

namespace App\Filament\Resources;

use DateTime;
use Filament\Forms;
use App\Models\Fine;
use Filament\Tables;
use Faker\Provider\Text;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Illuminate\Support\Facades\DB;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Section;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\DatePicker;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\FineResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\FineResource\RelationManagers;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;

class FineResource extends Resource
{
    protected static ?string $model = Fine::class;

    protected static ?string $navigationGroup = 'Books Management';

    protected static ?string $navigationIcon = 'heroicon-o-no-symbol';

    public static function form(Form $form): Form
    {
        $fineLoanOptions = [];

        $fineLoanData = DB::table("detail_peminjaman")->get();

        foreach ($fineLoanData as $row) {
            $fineLoanOptions[$row->loan_id] = $row->loan_id . ' - ' . $row->id_member;
        }


        return $form
            ->schema([
                Section::make()
                ->schema([
                    Select::make("loan_id")->options($fineLoanOptions),
                    TextInput::make("jumlah_denda"),
                    DatePicker::make("tanggal_pembayaran")
                    ->format("Y/n/j")
                ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make("fine_id")->sortable()->searchable(),
                TextColumn::make("loan_id"),
                TextColumn::make("jumlah_denda"),
                TextColumn::make("tanggal_pembayaran")
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
            'index' => Pages\ListFines::route('/'),
            'create' => Pages\CreateFine::route('/create'),
            'edit' => Pages\EditFine::route('/{record}/edit'),
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
