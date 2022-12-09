---
title: SmartBlend
origin: https://wiki.panotools.org/SmartBlend
status: outdate
last_modified_at: 2022-12-10
---

{:.note.italic}
Исходных кодов нет, единственно что до­с­ту­пно — архив с про­г­рам­мой (для Win­dows). Последние изменения
[оригинальной страницы на wiki.panotools.org][origin] датированы 2012 го­дом... Найти более актуальную
информацию о дан­ном софте не уда­лось. Перевод представляет исключительно исторический интерес. Часть
ссылок на этой странице уже никуда не ведут.

-----

**Smartblend** — это приложение для бесшовного смешивания изображений, разработанное Майклом Норелем.
С ним можно связаться по адресу minorlogic{at}yahoo{dot}com.

Основная цель smart­blend — смешивание панорамных изображений, хотя его можно использовать и для дру­гих целей,
таких как создание бесшовных текстур, монтаж фотографий или коллажей. Smartblend позволяет склеить множество
проблемных снимков (с па­рал­лак­сом, с дви­жу­щи­ми­ся объектами или с раз­ной экспозицией).

Например, см. рисунок параллакса ниже (из <http://www.htu.at/~sascha/ptguide/01.htm>, описанный как «невозможно сшить»)

{% include image.liquid place="center" width=656 src="/assets/img/tr/SB_Parallax.jpg" title="Smartblend: Пример параллакса" %}

Просто наложите одну картинку на дру­гую и обратите внимание на боль­шую разницу.

{% include image.liquid place="center" width=406 src="/assets/img/tr/SB_Parallax_overlapped.jpg" title="Smartblend: Пример наложения изображений с параллаксом"  %}

Изображение ниже смешано с помощью Smartblend.

{% include image.liquid place="center" width=406 src="/assets/img/tr/SB_Blended.jpg"
                                       title="Smartblend: Пример изображений с параллаксом смешанных посредством Smartblend"  %}

Другой пример использования Smartblend: <http://www.photodan.com.au/misc/flamchen.htm>

Если вы не знаете, что такое «приложение командной строки», у вас не по­лу­чит­ся его использовать. Но вы можете использовать интерфейс для Smart­blend:

- [PanoWizard][panowizard]
- [EnblendGUI][enblendgui]
- [PTGui][ptgui]
- [PTAssembler][ptassembler]
- [Hugin][hugin] (только через [враппер с sourceforge][wrapper][^wrp])

Скачать SmartBlend — [Smartblend_1_2_5.zip][zip]

## Как это работает

Программа находит визуальную ошибку в об­лас­ти перекрытия и ищет линию шва с ми­ни­маль­ной визуальной ошибкой. Затем смешивает изображения,
используя алгоритм, аналогичный сплайну с несколькими разрешениями.

Для изучения алгоритмов и опций используйте команды «-SeamVerbose» и «-PyramidVerbose».

Есть [хороший туториал][tut-ru], но он доступен только на русском языке. Кто-нибудь переведет?[^tut-ru]

Перевод BableFish — [туториал на английском языке][tut-en][^tut-en]

Добро пожаловать всем, кто хочет улучшить этот Smartblend, написать туториал и прочее.

{:.small}
(Текст взят с оригинальной домашней страницы smartblend)

## Smartblend на Mac

Раньше на tweakbits.com было хорошее руководство, но его больше нет. Если кто-то еще знает как, напишите вики-страницу: [Smartblend на Mac][mac].
Пока вы найдете содержимое, полученное из ке­ша Google, на со­от­вет­с­т­ву­ю­щей странице обсуждения.

## Дополнительные ссылки (от переводчика)

Удалось нагуглить следующее:

- <http://zubetzblitz.narod.ru/NewQTWR/sm/smartblend.htm>
- <http://zubetzblitz.narod.ru/NewQTWR/sm/smartblend_2.htm>

[^wrp]: Неактуально, нет там никакого враппера.
[^tut-ru]: Неактуально, нет там ничего.
[^tut-en]: Еще одна ссылка в никуда...

[origin]: https://wiki.panotools.org/SmartBlend
[wrapper]: http://hugin.svn.sourceforge.net/viewvc/hugin/hugin/trunk/platforms/windows/smartblend-wrapper/
[panowizard]: https://wiki.panotools.org/Historical:PanoWizard
[enblendgui]: https://wiki.panotools.org/index.php?title=Enblend_Front_End&redirect=no
[ptgui]: {% link _tr/panotools/ptgui.md %}
[ptassembler]: {% link _tr/panotools/ptassembler.md %}
[hugin]: {% link _tr/hugin/index.md %}
[zip]: https://wiki.panotools.org/images/3/37/Smartblend_1_2_5.zip
[tut-ru]: http://qtvr.by.ru/NewQTWR/sm/smartblend.htm
[tut-en]: http://babelfish.yahoo.com/translate_url?doit=done&tt=url&intl=1&fr=bf-home&trurl=http%3A%2F%2Fqtvr.by.ru%2FNewQTWR%2Fsm%2Fsmartblend.htm&lp=ru_en&btnTrUrl=Translate
[mac]: https://wiki.panotools.org/Smartblend_on_Mac
