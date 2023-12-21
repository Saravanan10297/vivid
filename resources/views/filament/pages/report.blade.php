<x-filament-panels::page>
    @foreach($groups as $group) 
        <livewire:report :group="$group->id" :key="$group->id" />
    @endforeach
</x-filament-panels::page>
