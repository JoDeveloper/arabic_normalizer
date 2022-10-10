
# Remove Arabic Diacritic

remove (Tashkeel / Harakat) from any given Arabic string without removing letters .

## Usage

```dart
final normalizer = ArabicNormalizer();

const ayah = "الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ";

print(normalizer.normalize(ayah)) // الحمد لله رب العالمين
```
