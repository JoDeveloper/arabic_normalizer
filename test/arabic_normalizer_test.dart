import 'package:arabic_normalizer/arabic_normalizer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('remove tashkeel from ayah', () {
    final normalizer = Normalizer();
    const ayah = "اتَّخَذوا أَيمٰنَهُم جُنَّةً فَصَدّوا عَن سَبيلِ اللَّهِ ۚ إِنَّهُم ساءَ ما كانوا يَعمَلونَ";
    const without = 'اتخذوا أيمنهم جنة فصدوا عن سبيل الله  إنهم ساء ما كانوا يعملون';

    expect(normalizer.normalize(ayah), without);

    const ayah2 = "وَمِنَ النَّاسِ مَنْ يَقُولُ آمَنَّا بِاللَّهِ وَبِالْيَوْمِ الآخِرِ وَمَا هُمْ بِمُؤْمِنِينَ";
    const without2 = "ومن الناس من يقول آمنا بالله وباليوم الآخر وما هم بمؤمنين";

    expect(normalizer.normalize(ayah2), without2);

    const ayah3 = "الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ";
    const without3 = "الحمد لله رب العالمين";

    expect(normalizer.normalize(ayah3), without3);
  });
}
