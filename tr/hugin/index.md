---
layout: translation
title: Hugin
origin: https://wiki.panotools.org/Hugin
date: 2022-11-17
---

**Hugin** — это открытая программа для сшивки панорам и графический интерфейс (GUI) для [Panorama tools][panotools].
Так же он предоставляет ряд дополнительных компонентов и инструментов командной строки.

## Обзор

Являясь по сути сшивателем панорам, как и другие [графические интерфейсы][gui_front_ends] для этого, Hugin также содержит
ряд расширенных функций:

Среди опций рабочего процесса есть возможность корректировки [экспозиции][exposure_correction], [виньетирования][vignetting]
и [баланса белого][white_balance] между фотографиями; генерации [HDR][hdr],
[слияния экспозиций<sup>🗗</sup>](http://www.wikipedia.org/wiki/Exposure_Fusion)
и [стекинга по фокусу<sup>🗗</sup>](http://www.wikipedia.org/wiki/Focus_stacking) из фотографий сделанных с использованием
[брекетинга][bracketing]; а также использования напрямую входных данных в [16-битном][16bit] и [HDR][hdr]-представлении.
<!-- TODO: переделать <sup>🗗</sup> на стили -->

Фотографии могут быть цифровыми или сканированными, поддерживается полный спектр объективов, от простых камерафонов
до малоизвестных [фишай][fisheye]-объективов. Hugin поддерживает на выходе различные [проекции][projections], включая
ряд сферических, картографических и камерных проекций.

Hugin поддерживает многорядные панорамы, как с брекетингом, так и без него. Брекетинг может быть как ручной, снятый
с помощью соответствующей функции камеры, так и в виде последовательных панорам, снятых с различными уровнями экспозиции.
Можно также успешно создавать панорамы из фотографий, сделанных на камеры, которые всегда используют автоматические
установки экспозиции и баланса белого.

Hugin также поддерживает использование масок, что означает, что вы можете исключить части изображений, которые вы не хотите
видеть в своих панорамах, или включить части изображений, которые вы специально хотите видеть в своих панорамах.

Hugin также использует отдельный (фоновый) сшиватель панорамы. Это означает, что вы можете собирать панораму в окне сшивателя
[PTBatcherGUI][hugin_batch_processor], работая над следующей панорамой в основном окне Hugin.

Начиная с версии 2011.2.0, Hugin поддерживает скрипты на Python. Функциональность скриптов все еще находится в зачаточном
состоянии и требует дополнительной разработки и тестирования. На данный момент она доступна только в Linux и Windows,
и в настоящее время нет никакой обратной связи от плагина, кроме итогового успеха или неудачи, которые сообщаются в диалоговом
окне. Если вы используете Linux, вы можете запустить Hugin из командной строки и переключиться на окно терминала, из которого
вы его запустили, тогда вы увидите любой консольный вывод, который может произвести плагин.

### Ссылки

* [Официальный сайт Hugin<sup>🗗</sup>](http://hugin.sourceforge.net/) на SourceForge. Скриншоты, учебники, документация, ссылки и т.д.
* [Страница проекта<sup>🗗</sup>](http://sourceforge.net/projects/hugin) на SourceForge. Файлы для скачивания.
* [Hugin на Launchpad<sup>🗗</sup>](https://launchpad.net/hugin). База известных багов и фичреквесты.
* [Hugin FAQ][faq]. Часто задаваемые вопросы.

## Интерфейс пользователя

Начиная с версии 2013.0.0 (выпущена в начале 2013 года) Hugin предоставляет три варианта пользовательского интерфейса:
простой, продвинутый и экспертный *(в настоящее время в меню программы эти термины не переведены — в меню фигурируют «Simple»,
«Advanced» и «Expert» — прим. перев.)*.

* **Simple**: интерфейс предлагает всю базовую функциональность для создания панорам и будет достаточен в 90% случаев.
* **Advanced**: в этом режиме стартовым окном становится «[[Редактор панорамы]]», окно простого интерфейса остается на заднем плане.
* **Expert**: в дополнение к предыдущему показывает все опции и возможности тонкой настройки, доступные в Hugin.

*(См. также «[Version 2012 and older GUI<sup>🗗</sup>](https://wiki.panotools.org/Hugin_Main_window_old_gui)» для ознакомления
со старым интерфейсом. Заметим, что Hugin поставляется со встроенной справкой, доступной из основного меню программы «Справка / Справка»,
там можно прочитать те же тексты, что и в настоящей документации.)*
<!-- тут какая-то невнятица с версиями в оригинале, которую проще проигнорить -->

### Простой интерфейс пользователя

* **[Главное окно][main_window]**
  * [Вкладка «Ассистент»][assistant_tab]
  * [Вкладка «Предпросмотр»][preview_tab]
  * [Вкладка «Размещение»][layout_tab]
  * [Вкладка «Проекция»][projection_tab]
  * [Вкладка «Сдвиг/Смещение»][move_drag_tab]
  * [Вкладка «Обрезка»][crop_tab]

### Продвинутый интерфейс пользователя

* **[Редактор панорамы][panorama_editor_window]**
  * [Вкладка «Фотоснимки»][photos_tab]
  * [Вкладка «Маски»][masks_tab]
  * [Вкладка «Контрольные точки»][control_points_tab]
  * [Вкладка «Оптимизация»][optimiser_tab] (доступна только если выбраны ручные параметры геометрической оптимизации на [вкладке «Фотоснимки»][photos_tab])
  * [Вкладка «Экспозиция»][exposure_tab] (доступна только если выбраны ручные параметры фотометрической оптимизации на [вкладке «Фотоснимки»][photos_tab])
  * [Вкладка «Сшивка»][stitcher_tab]

Окно редактора панорам «захватывает» передний план, но вы все равно можете переключиться на простой пользовательский интерфейс, который запускается
как «фоновый» экран [редактора панорам][panorama_editor_window].

### Экспертный интерфейс пользователя

Этот вариант идентичен расширенному пользовательскому интерфейсу, включая простой экран пользовательского интерфейса на фоне.
Дополнительно дает больше возможностей в виде контекстных меню (по щелчку правой кнопкой мыши) в некоторых элементах интерфейса.

## Компоненты Hugin

В состав пакета Hugin входят следующие инструменты:

* **Hugin** — фронтенд, графический интерфейс пользователя.

* [`nona`][nona] — ремаппер командной строки, который поддерживает также фотометрические поправки (экспозиция, виньетирование, баланс белого).

* [`fulla`][fulla] — коррекция [бочкообразной дисторсии][barrel_distortion], [хроматических аберраций][chromatic_aberration] и [виньетирования][vignetting].

* [`autooptimiser`][autooptimiser] — инструмент с тем же интерфейсом, что и [`PToptimizer`][ptoptimizer], за исключением использования
  попарной оптимизации, которая не требует предварительного ручного позиционирования.

* [`align_image_stack`][align_image_stack] — инструмент для автоматизации процесса [выравнивания стопки фотографий][align_a_stack_of_photos].

* [`tca_correct`][tca_correct] — инструмент для автоматической генерации параметров коррекции [хроматических аберраций][chromatic_aberration]
  для использования с [`fulla`][fulla].

* [`hugin_executor`][hugin_executor] — инструмент командной строки для сшивания и запуска ассистента.

* [`pto_gen`][pto_gen] — инструмент командной строки для создания файла проекта из изображений.

* [`cpfind`][cpfind] — инструмент командной строки для поиска контрольных точек.

* [`linefind`][linefind] — инструмент поиска вертикальных объектов для выравнивания.

* [`geocpset`][geocpset] — инструмент командной строки для соединения невыразительных изображений посредством «геометрических» контрольных точек.

* [`icpfind`][icpfind] — инструмент командной строки для использования эвристического сопоставления контрольных точек, как в Hugin.

* [`cpclean`][cpclean] — инструмент командной строки для удаления контрольных точек с сомнительными расстояниями ошибок.

* [`checkpto`][checkpto] — инструмент командной строки для проверки файла проекта и получения отчета о количестве имеющихся цепочек изображений.

* [`pto_var`][pto_var] — инструмент командной строки для управления переменными изображения.

* [`pto_lensstack`][pto_lensstack] — инструмент командной строки для управления объективами и стопками изображений.

* [`pto_mask`][pto_mask] — инструмент командной строки для добавления маски в файл проекта.

* [`pto_template`][pto_template] — инструмент командной строки для применения шаблона к файлу проекта.

* [`calibrate_lens_gui`][calibrate_lens_gui] — автоматическая калибровка объектива с использованием детектирования прямых линий.

* [`vig_optimize`][vig_optimize] — инструмент командной строки для оценки фотометрических параметров.

* [`hugin_hdrmerge`][hugin_hdrmerge] — объединяет несколько экспозиций в [HDR][hdr], используя антипризрачный алгоритм Хана.

* [`verdandi`][verdandi] — сливает разные изображения в одно без швов.

* [`hugin_stacker`][hugin_stacker] — собирает перекрывающиеся изображения в одно.

* [`hugin_stitch_project`][hugin_stitch_project] — графический инструмент для сшивания одного `.pto`-проекта.

* [`celeste_standalone`][celeste_standalone] — удаляет облакоподобные контрольные точки из файлов проекта.

* [`PTBatcherGUI`][hugin_batch_processor] — графический менеджер очередей для сшивания нескольких проектов Hugin.

* `deghosting_mask` — создает маску для удаления призраков в изображениях, сделанных с брекетингом.

* [`pano_modify`][pano_modify] — изменение выходных параметров файла проекта.

* `pano_trafo` — преобразование координат изображения.

* [`pto_merge`][pto_merge] — объединяет два или более файлов проекта Hugin.

* [`pto_move`][pto_move] — перемещает файлы проекта Hugin вместе с соответствующими изображениями.

* [`hugin_lensdb`][hugin_lensdb] — ведение базы данных камер и объективов Hugin.

Более подробная информация, документация и учебники доступны на [веб-сайте проекта<sup>🗗</sup>](http://hugin.sourceforge.net/).

Как и другие GUI-фронтенды, **Hugin** предоставляет простой в использовании унифицированный интерфейс для целого ряда других
инструментов командной строки, включая:

* [`autopano-sift`][autopano-sift], [`autopano-sift-C`][autopano-sift-c], [`panomatic`][panomatic] или [`autopano`][autopano] для автоматического
  создания [контрольных точек][control_points] (обратите внимание, что внешний генератор контрольных точек больше не обязателен).

* [`enblend`][enblend] и [`enfuse`][enfuse] для бесшовного слияния выходных изображений.

Проект Hugin также обеспечивает открытую замену для небольшого числа компонентов [Panorama tools][panotools] с закрытым исходным кодом,
особенно [PTStitcher][ptstitcher]. Была разработана замена PTStitcher под названием [`nona`][nona] и замена [`PToptimizer`][ptoptimizer]
под названием [`autooptimiser`][autooptimiser], поддерживающая их наиболее важные функции.

## Разработка

Hugin — программа с открытым исходным кодом и, как и любое разрабатываемое сообществом программное обеспечение, очень сильно зависит
от добровольных вложений ресурсов. Если у вас есть навыки кодирования, вы можете посмотреть на исходный код и внести в него свой вклад.
Даже если у вас нет навыков программирования, у вас, скорее всего, есть некоторые навыки, которые могут быть использованы в проекте,
и вы более чем можете внести свой вклад в свое время. Задачи, требующие внимания, часто меняются, как и необходимый набор навыков и ресурсов.
Узнайте больше о [процессе разработки][development_of_open_source_tools].

## Внешние ссылки

* [Домашняя страница<sup>🗗</sup>](http://hugin.sourceforge.net/) — скриншоты, учебники, документация и ссылки.
* [Проект на Sourceforge<sup>🗗</sup>](http://sourceforge.net/projects/hugin) — скачивание файлов.
* [Баг-трекер<sup>🗗</sup>](https://launchpad.net/hugin) — для отчетов об ошибках и запросов новой функциональности.
* [Sourceforge HG<sup>🗗</sup>](https://sourceforge.net/p/hugin/hugin/ci/default/tree/) — для просмотра исходного кода Hugin в Mercurial. <!-- TODO: зарепортить кривую ссылку в оригинале -->
* [hugin-ptx GoogleGroup<sup>🗗</sup>](http://groups.google.com/group/hugin-ptx) — чтобы внести свой вклад в разработку и получить поддержку коллег.

## Поддерживаемые операционные системы

* [Windows][windows],
* [Linux and Unix][unix],
* [Mac OS X][mac].


[panotools]: {% link tr/panotools/panorama_tools.md %}
[gui_front_ends]: {% link tr/panotools/gui_frontends.md %}
[exposure_correction]: {% link tr/glossary/exposure_correction.md %}
[vignetting]: {% link tr/glossary/vignetting.md %}
[white_balance]: {% link tr/glossary/white_balance.md %}
[hdr]: {% link tr/glossary/hdr.md %}
[bracketing]: {% link tr/glossary/bracketing.md %}
[16bit]: {% link tr/glossary/16bit.md %}
[fisheye]: {% link tr/projections/fisheye.md %}
[projections]: {% link tr/projections/projections.md %}
[hugin_batch_processor]: {% link tr/hugin/batch_processor.md %}
[faq]: {% link tr/FAQ.md %}
[main_window]: {% link tr/hugin/main/index.md %}
[assistant_tab]: {% link tr/hugin/main/assistant_tab.md %}
[preview_tab]: {% link tr/hugin/main/preview_tab.md %}
[layout_tab]: {% link tr/hugin/main/index.md %}#layout
[projection_tab]: {% link tr/hugin/main/projection_tab.md %}
[move_drag_tab]: {% link tr/hugin/main/move_drag_tab.md %}
[crop_tab]: {% link tr/hugin/main/crop_tab.md %}
[panorama_editor_window]: {% link tr/hugin/panoed/index.md %}
[photos_tab]: {% link tr/hugin/panoed/photos_tab.md %}
[masks_tab]: {% link tr/hugin/panoed/masks_tab.md %}
[control_points_tab]: {% link tr/hugin/panoed/control_points_tab.md %}
[optimiser_tab]: {% link tr/hugin/panoed/optimiser_tab.md %}
[exposure_tab]: {% link tr/hugin/panoed/exposure_tab.md %}
[stitcher_tab]: {% link tr/hugin/panoed/stitcher_tab.md %}
[nona]: {% link tr/tools/nona.md %}
[fulla]: {% link tr/tools/fulla.md %}
[barrel_distortion]: {% link tr/glossary/barrel_distortion.md %}
[chromatic_aberration]: {% link tr/glossary/chromatic_aberration.md %}
[autooptimiser]: {% link tr/tools/autooptimiser.md %}
[ptoptimizer]: {% link tr/panotools/ptoptimizer.md %}
[align_image_stack]: {% link tr/tools/align_image_stack.md %}
[align_a_stack_of_photos]: {% link tr/tutorial/align_a_stack_of_photos.md %}
[tca_correct]: {% link tr/tools/tca_correct.md %}
[hugin_executor]: {% link tr/tools/hugin_executor.md %}
[pto_gen]: {% link tr/tools/pto_gen.md %}
[cpfind]: {% link tr/tools/cpfind.md %}
[linefind]: {% link tr/tools/linefind.md %}
[geocpset]: {% link tr/tools/geocpset.md %}
[icpfind]: {% link tr/tools/icpfind.md %}
[cpclean]: {% link tr/tools/cpclean.md %}
[checkpto]: {% link tr/tools/checkpto.md %}
[pto_var]: {% link tr/tools/pto_var.md %}
[pto_lensstack]: {% link tr/tools/pto_lensstack.md %}
[pto_mask]: {% link tr/tools/pto_mask.md %}
[pto_template]: {% link tr/tools/pto_template.md %}
[calibrate_lens_gui]: {% link tr/tools/calibrate_lens_gui.md %}
[vig_optimize]: {% link tr/tools/vig_optimize.md %}
[hugin_hdrmerge]: {% link tr/tools/hugin_hdrmerge.md %}
[verdandi]: {% link tr/tools/verdandi.md %}
[hugin_stacker]: {% link tr/tools/hugin_stacker.md %}
[hugin_stitch_project]: {% link tr/tools/hugin_stitch_project.md %}
[celeste_standalone]: {% link tr/tools/celeste_standalone.md %}
[pano_modify]: {% link tr/tools/pano_modify.md %}
[pto_merge]: {% link tr/tools/pto_merge.md %}
[pto_move]: {% link tr/tools/pto_move.md %}
[autopano-sift]: {% link tr/tools/autopano-sift.md %}
[autopano-sift-c]: {% link tr/tools/autopano-sift-c.md %}
[panomatic]: {% link tr/tools/panomatic.md %}
[autopano]: {% link tr/tools/autopano.md %}
[control_points]: {% link tr/glossary/control_points.md %}
[enblend]: {% link tr/tools/enblend.md %}
[enfuse]: {% link tr/tools/enfuse.md %}
[ptstitcher]: {% link tr/panotools/ptstitcher.md %}
[hugin_lensdb]: {% link tr/tools/hugin_lensdb.md %}
[development_of_open_source_tools]: {% link tr/development_of_open_source_tools.md %}
[windows]: {% link tr/platform/windows.md %}
[unix]: {% link tr/platform/unix.md %}
[mac]: {% link tr/platform/mac.md %}
