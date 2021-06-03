import 'package:scorecontacts/domain/user/diary/diary_entry.dart';

class SelectionEntry {
  final DiaryEntry entry;
  bool isSelected;
  bool display;

  SelectionEntry({
    required this.entry,
    this.isSelected = false,
    this.display = true,
  });

  void toogleSelection() => isSelected = !isSelected;
}

extension SelectedContactsListExtension on List<SelectionEntry> {
  List<DiaryEntry> toDiaryEntryList() => map((selectionEntry) => selectionEntry.entry).toList();

  List<SelectionEntry> displayedEntries() =>
      where((selectionEntry) => selectionEntry.display).toList();

  bool hasSelectedEntries() => any((selectionContact) => selectionContact.isSelected);

  int selectedEntriesAmount() =>
      fold<int>(0, (value, contact) => value + ((contact.isSelected) ? 1 : 0));

  List<SelectionEntry> selectedEntries() =>
      where((selectionContact) => selectionContact.isSelected).toList();
}

extension ContactsListExtension on List<DiaryEntry> {
  List<SelectionEntry> toSelectionEntries() =>
      map((entry) => SelectionEntry(entry: entry)).toList();
}
