import '../../../../../domain/entities/poem.dart';
import '../../../../../domain/entities/writer.dart';

const bartoAgniya = Writer(
  name: 'Агния Барто',
  avatar: 'modules/features/writer/assets/writers/barto.jpg',
  bio:
      'Стихи отличаются простотой чтения и запоминания. Через них автор на равных обращалась к ребёнку простым языком без лирических отступлений и описаний. ',
  poem: [
    _allForAll,
    _helper,
  ],
);

const _allForAll = Poem(
  title: 'Все для всех',
  poem: '''
Приехали! Приехали!
Родители приехали!
С конфетами, с орехами
Родители приехали.

Девочки и мальчики
Прыгают от радости:
В каждом чемоданчике
Яблоки и сладости.

Вот для дочки
Танечки
В узелочке
Прянички.
А вот это пироги,
Для себя их береги.
''',
);

const _helper = Poem(
  title: 'Помощница',
  poem: '''
У Танюши дел немало,
У Танюши много дел:
Утром брату помогала, —
Он с утра конфеты ел.

Обещала вымыть ложки,
Пролила столярный клей,
Отворила дверь для кошки,
Помогла мяукать ей.

Вот у Тани сколько дела:
Таня ела, чай пила,
Села, с мамой посидела,
Встала, к бабушке пошла.

Перед сном сказала маме:
— Вы меня разденьте сами,
Я устала, не могу,
Я вам завтра помогу.
''',
);
