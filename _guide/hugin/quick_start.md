---
title: Быстрый старт
description: Базовый процесс создания панорамы в Hugin пошагово
status: done
software:
  - "Hugin v2021.0.0"
  - "Linux Mint 21 Vanessa"
last_modified_at: 2022-11-30
image: /assets/img/quick_start/01_loaded.png
---
Эта статья описывает процесс создания панорамы в Hugin в прос­том и общем виде[^ref]. С од­ной стороны, мы не бу­дем рассматривать
сложные случаи, с дру­гой — в боль­шин­с­т­ве случаев, если исходные кадры сняты аккуратно, этого вполне достаточно.

## Вкратце о съемке

{% include image.liquid place="right" width=320 src="/assets/img/quick_start/source.png" title="Исходные кадры для панорамы" %}

Для панорамы я выбрал 12 кад­ров, которые представляют на са­мом деле 4 сце­ны, снятые с [бре­ке­тин­гом][bracketing] по экспозиции ±2EV.
Это достаточно обычный случай, поскольку именно там, где используются панорамы, очень часто динамический диапазон сцены существенно
шире не толь­ко диапазона, который способны отобразить наши мониторы, но и диапазона, который способна зафиксировать камера.

Сцены перекрываются друг с другом примерно на по­ло­ви­ну кадра. Вообще, желательно делать перекрытие около трети, т.е. *меньше*
половины кадра, но не все­гда удается.

Снимки конвертированы в 16-бит­ный [TIFF][tiff][^src] посредством [Darktable][darktable]. Вообще, современный Hugin уже умеет работать
непосредственно с [ис­ход­ны­ми raw-фай­ла­ми][raw], но это отдельная тема, да и конвертация в спе­ци­а­ли­зи­ро­ван­ном соф­те дает больше контроля.
При кон­вер­та­ции были отключены по мак­си­му­му все изменения, фактически оставлен только баланс белого, да и то — по умол­ча­нию из ка­ме­ры.

Снималось все [с рук][hands], на 18mm фокусного расстояния (поскольку ка­ме­ра — кроп — Canon EOS 77D, эквивалентное фокусное расстояние примерно
28mm для пол­но­кад­ро­вых камер).

## Стыковка

*Первым шагом* загружаем снимки в прог­рам­му. В ос­нов­ном окне в вер­х­ней части, во [вклад­ке «Ассистент»][assistant] имеется большая кнопка
с со­от­вет­с­т­ву­ю­щей надписью **«1. За­гру­зить снимки...»**, которую и следует нажать.

{% include image.liquid place="center"
                        width=800
                          src="/assets/img/quick_start/01_loaded.png"
                        title="Главное окно Hugin со све­же­за­гру­жен­ны­ми кадрами"
                           id="scr_loaded" %}

В процессе мы можем видеть сообщение:

{% include image.liquid place="center" width=415 src="/assets/img/quick_start/big_range.png" title="Сообщение о боль­шом диапазоне яркости" %}

Сообщает нам оно о том, что с од­ной стороны мы загрузили изображения, которые вместе покрывают большой диапазон яркости, но при этом,
с дру­гой стороны, Hugin не мо­жет автоматически определить их в стоп­ки с оди­на­ко­вы­ми сценами. Это, в об­щем-то, прямое следствие съемки
с рук — кадры соответствуют друг другу не иде­аль­но. Тут же нам рекомендуют пойти в [ре­дак­тор панорамы][advanced] и вручную определить
эти стопки. Но мы туда не пой­дем.

Возвращаясь к [пер­во­му скриншоту](#scr_loaded), можно заметить зеленую подсказку, которая советует нам использовать цилиндрическую проекцию.
Учтем, когда перейдем к соб­с­т­вен­но выбору проекции.

Также стоит обратить внимание на па­ра­мет­ры во вклад­ке: *«Тип объектива»*, *«Фокусное расстояние»* и *«Множитель фокусного расстояния»*
(т.е. [кроп-фактор][crop_factor]). Актуальные значения Hugin берет из [EXIF-ме­та­дан­ных][exif] загруженных файлов, если они там, конечно, есть.
У нас они есть, и полученные значения нас вполне устраивают, хотя множитель можно и исправить на бо­лее точ­ный 1.6, но это не кри­тич­но.
Однако, если, например, снимать на пол­нос­тью ручной объектив, то соответствующих данных не бу­дет, и их *следует* указать вручную, особенно
это касается [типа объ­ек­ти­ва][lens] — довольно часто панорамы снимаются на фи­шай и именно [фи­шай-объ­ек­ти­вы][lens_fisheye] часто бывают
полностью ручными.

*Второй шаг* нам снова подсказывает интерфейс, а имен­но — кнопка с над­писью **«2. Вы­ров­нять...»** — нажимаем и некоторое время наблюдаем
процесс выравнивания:

{% include image.liquid place="center" width=450 src="/assets/img/quick_start/aligning.png" title="Окно процесса выравнивания" %}

Программа автоматически находит контрольные точки и выстраивает в со­от­вет­с­т­вии с ни­ми снимки. На этом этапе нас могут поджидать затруднения,
если кадры плохо стыкуются, что бывает не так уж редко при съем­ке с рук. Также усложняющим фактором может стать объектив с боль­шим
фокусным расстоянием. В этом случае нам уже *придется* идти в ре­дак­тор панорамы и вручную стыковать снимки. К счастью, когда мы снимаем
далекие объекты на ко­рот­ко­фо­кус­ный (широкоугольный) объектив, аккуратно и с не­ко­то­рой привычкой, автоматика срабатывает вполне успешно.

Получаем следующую картину:

{% include image.liquid place="center" width=800 src="/assets/img/quick_start/02_aligned.png" title="Главное окно после выравнивания" id="scr_aligned" %}

Теперь мы видим уже собранную картинку, правда, немного кривоватую. Кроме того, она темная, но с этим ничего не по­де­лать — сведение
экспозиций будет выполнено только на фи­наль­ном этапе, в про­цес­се же работы имеем то, что имеем.

Двигаемся дальше.

## Выбор [проекции][projection]

*Третьим шагом* мы идем во [вклад­ку «Проекция»][projection_tab] и выбираем, что понравится. Выбор определяется задачами, характером картинки,
художественным вкусом и прочими субъективными факторами. Так или иначе, тут можно и поэкспериментировать. В прин­ци­пе, рекомендованная нам
в на­ча­ле [цилиндрическая проекция][cylinrical] тоже подходит, но, чтобы облака не бы­ли неестественно растянуты, выберем [эквидистантную][equirectangular].

{% include image.liquid place="center" width=800 src="/assets/img/quick_start/03_projection.png" title="Главное окно с выбором проекции" id="scr_projection" %}

## Выравнивание и обрезка

*Четвертый шаг* — идем во [вклад­ку «Сдвиг/Смещение»][move], наживаем там по очереди кнопки: «По центру», «Уместить» и «Вы­пря­мить», самая интересная из которых
последняя — она пытается автоматически выровнять горизонтали и вертикали в кадре. Получилось не очень, поэтому подтягиваем немного мышкой ту­да-сю­да, ориентируясь
на чув­с­т­во композиции и память о том, как этот пейзаж выглядит вживую.

{% include image.liquid place="center" width=800 src="/assets/img/quick_start/04_moved.png" title="Главное окно со смещениями и выравниванием" id="scr_moved" %}

Если на этом этапе ничего хорошего не по­лу­ча­ет­ся, имеет смысл вернуться на шаг назад и выбрать другую проекцию.

*Шаг пятый* — обрезка. Идем в [со­от­вет­с­т­ву­ю­щую вкладку][crop_tab] и нажимаем кнопку «HDR Автообрезка», после чего визуальная рамка устанавливается так,
чтобы выбрать прямоугольник максимальную площадь, такой чтобы под ним были как «темновые», так и «светлые» снимки. Находящаяся рядом кнопка «Автообрезка»
так же выбирает максимальный прямоугольник, но смотрит на лю­бое заполнение, т.е. просто сплошную картинку. Если у нас нет большого диапазона яркостей,
т.е. снимали мы без бре­ке­тин­га, то «HDR Автообрезка» будет работать так же.

{% include image.liquid place="center" width=800 src="/assets/img/quick_start/05_crop.png" title="Главное окно: обрезка" id="scr_crop" %}

Сто­ит ли здесь вручную выбрать другую обрезку? Тут два момента:

- Делать финальное кадрирование в Hugin не сто­ит. Это все таки не гра­фи­чес­кий редактор, поэтому очень даже имеет смысл получить максимально возможную
  панораму, которую затем можно довести до ума в другом софте, более для этого приспособленном, где можно покрутить кривые, цвета и так далее.

- С дру­гой стороны, может возникнуть такая ситуация, когда полученная склейка сама по се­бе далековата от пря­мо­у­голь­ни­ка, например, отсутствуют углы.
  В та­ких случаях автоматика может выбрать не ту область, которая нужна, и тогда, конечно, следует руками выставить нужный прямоугольник.

  Если при этом захватить черные незаполненные участки, ничего страшного не про­и­зой­дет, просто будут черные участки. Потом в фо­то­ре­дак­то­ре можно будет
  их об­ре­зать, залить или заполнить фрагментами из других мест (если, скажем, это небо или ровное поле).

## Результат

В дей­с­т­ви­тель­нос­ти до на­сто­я­ще­го момента панорамы как единого изображения еще нигде не су­щес­т­ву­ет. Но уже есть все для ее создания.
*Последний шаг* — возвращаемся на вклад­ку «Ассистент» и нажимаем финальную кноп­ку — **«3. Со­здать па­но­ра­му...»** — теперь она нам доступна.

Открывается диалог:

{% include image.liquid place="center" width=600 src="/assets/img/quick_start/06_dialog.png" title="Диалог сшивки панорамы" id="scr_dialog" %}

Что мы здесь видим?

- *Размер и формат файла.* Размер трогать не стоит. Лучше будет отресайзить картинку уже в другом софте после финальной обработки. Формат, опять же
  для дальнейшей обработки лучше выбрать TIFF[^tgt]. В этом случае мы получим та­кой же, как на вхо­де, 16-бит­ный TIFF, который будет гораздо лучше тянуться
  и раскрашиваться, чем 8-бит­ный [JPEG][jpeg]. Сжатие можно оставить по умол­ча­нию, в лю­бом случае, это не тот формат, который вы будете непосредственно
  выкладывать в ин­тер­нет.

- *Вывод.* Здесь можно видеть, что доступны две галочки — это потому что у нас большой диапазон яркостей. Если же изначально мы клеим панораму
  из 8-битных снимков без бре­ке­тин­га, то эти две галочки будут недоступны, а верхняя — для уз­ко­го динамического диапазона — напротив, доступна.

  Что лучше, сначала сведение, потом объединение, или наоборот? Практика показывает, что когда как. Просто ставим обе галочки, а потом выберем
  из по­лу­чив­ше­го­ся, что нам больше понравится.

Нажимаем **«ОК»**, тут Hugin нас заставит сохранить проект и задать префикс выходных файлов, там стандартные диалоги сохранения, так что
обойдемся без скриншотов.

И ждем. Дальнейший процесс не очень быстрый, а для боль­ших и сложных панорам может занимать и часы (конечно, все зависит и от ва­ше­го
аппаратного обеспечения).

{% include image.liquid place="center" src="/assets/img/quick_start/07_stitching.png" title="Процесс сшивки" id="scr_stitching" %}

На скриншоте слева мы видим собственно процесс, а справа менеджер заданий — после того, как мы сохранили проект и передали его на обработку,
можем создать новый проект с дру­гой панорамой, пройти все вышеописанные шаги и в спис­ке справа будут два проекта. Там их можно
при­ос­та­нав­ли­вать/за­пус­кать, менять порядок и т.д.

В итоге получаем (если выставили две галочки) два файла — в данном случае с именами `IMG_2593 - IMG_​2604_​blended_​fused.tif` и `IMG_2593 - IMG_2604_fused.tif`.
Пристально их рассматриваем на пред­мет [«призраков»][ghosting], нестыковок, волнообразных градиентов на не­бе и т.д., выбираем наиболее подходящий и доводим
его до фи­наль­ной картинки в [GIMP][gimp]'е, или, как ни стран­но, в [Dark­table][darktable].

Полученные файлы не отличаются высоким контрастом и яркими цветами, но, напомню, они 16-битные, и свобода улучшения у нас довольно большая.

Собственно, вот что мы примерно получаем[^cnv]:

- Файл без каких либо корректировок, только изменение размера и конвертация в JPEG.

{% include image.liquid place="center" width=640 src="/assets/img/quick_start/fused.jpg" title="Результат склейки панорамы" %}

- Файл после обработки <s>напильником</s> в Darktable.

{% include image.liquid place="center" width=800 src="/assets/img/quick_start/fused_darktable.jpg" title="Финальная панорама после Darktable" %}

Ну, собственно, последний файл и является нашей целью и итогом настоящей статьи. *Проблемные* ситуации и сложные случаи не рассмотрены намеренно,
как и подробности различных проекций — это все отдельные и весьма обширные темы.


[^ref]: Данная статья во мно­гом похожа на мою старую статью [«Пингвин-фо­то­лю­би­тель: 3. Панорамы»][peng]. В от­ли­чие от нее здесь используется
        более актуальная версия Hugin, взяты более интересные исходники, и в це­лом тема существенно углублена при со­хра­не­нии установки
        на «hap­py path», без слож­ных случаев.

[^src]: Можно ли клеить панорамы, если у вас нет 16-бит­ных TIFF или 14-бит­ных исходных raw-файлов, а есть только 8-бит­ный JPEG из, например,
        «мыльницы»? Конечно, можно. Понятно, что чем лучше исходники, тем лучше (при про­чих равных) результат, но в прин­ци­пе любые фотографии
        подойдут.

[^tgt]: Впрочем, никто не за­пре­ща­ет формировать сразу финальную картинку в фор­ма­те JPEG, с за­дан­ны­ми размерами, с окон­ча­тель­ной обрезкой...
        Однако, трудно себе представить ситуацию, когда имеется Hugin (и достаточно мощное железо), но нет никакого фоторедактора для фи­наль­ной
        доводки.

[^cnv]: Есть некоторый нюанс с по­лу­ча­е­мы­ми файлами в фор­ма­те TIFF, описанный в от­дель­ной за­мет­ке — [«Размер холста в TIFF»][canvas].

[peng]: https://shikhalev.org/2016/06/hugin.html
[bracketing]: {% link _guide/ref/glossary.md %}#bracketing
[tiff]: {% link _guide/ref/format/tiff.md %}
[jpeg]: {% link _guide/ref/format/jpeg.md %}
[darktable]: {% link _guide/tools/other/raw_converters.md %}
[raw]: {% link _guide/ref/format/raw.md %}
[assistant]: {% link _guide/hugin/gui/simple.md %}#assistant
[advanced]: {% link _guide/hugin/gui/advanced.md %}
[crop_factor]: {% link _guide/ref/glossary.md %}#crop_factor
[exif]: {% link _guide/ref/format/exif.md %}
[lens]: {% link _guide/shoot/lens.md %}
[lens_fisheye]: {% link _guide/shoot/lens.md %}#fisheye
[projection_tab]: {% link _guide/hugin/gui/simple.md %}#projection
[cylinrical]: {% link _guide/ref/projection/cylindrical.md %}
[equirectangular]: {% link _guide/ref/projection/equirectangular.md %}
[projection]: {% link _guide/ref/projection/index.md %}
[fisheye]: {% link _tr/projections/fisheye.md %}
[move]: {% link _guide/hugin/gui/simple.md %}#move_drag
[crop_tab]: {% link _guide/hugin/gui/simple.md %}#crop
[gimp]: {% link _guide/tools/other/gimp.md %}
[ghosting]: {% link _guide/ref/glossary.md %}#ghosting
[hands]: {% link _guide/shoot/hands.md %}
[control_points]: {% link _guide/ref/glossary.md %}#control_points
[nadir]: {% link _guide/ref/glossary.md %}#nadir
[zenith]: {% link _guide/ref/glossary.md %}#zenith
[canvas]: {% link _guide/notes/tiff_canvas.md %}