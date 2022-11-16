---
layout: translation
title: Главное окно
origin: https://wiki.panotools.org/Hugin_Main_window
---
## Вкладки

Хотя существует множество других применений, Hugin — это прежде всего инструмент для сборки нескольких фотографий и создания «бесшовной» панорамы.

Hugin — это программа, основанная на «вкладках». Ниже вы видите фрагмент экрана Hugin, показывающий вкладки.

![Вкладки главного окна](/tr/img/main-tabs.png)

Этот процесс сборки нескольких фотографий и создания «бесшовной» панорамы является полностью автоматическим, если вы используете
[вкладку «Ассистент»][assistant_tab], которая является вкладкой по умолчанию, но **Hugin** также позволяет полностью вручную управлять
каждым этапом. Для этого Hugin предоставляет три варианта пользовательского интерфейса: простой, продвинутый и экспертный. Простой режим
Hugin состоит из вкладки «Ассистент» и нескольких других вкладок (как показано выше), которые дают вам простой, но эффективный контроль
над тем, что вы делаете.

Это краткий обзор *системы вкладок* для *простого* интерфейса. Это не пошаговое руководство. Руководства вы можете найти
на [сайте Hugin<sup>🗗</sup>](http://hugin.sourceforge.net/tutorials/).

Аналогичный обзор «старого» пользовательского интерфейса, вы можете найти
в «[Hugin Main window old GUI<sup>🗗</sup>](https://wiki.panotools.org/Hugin_Main_window_old_gui)».
<!-- TODO: не забыть поправить ссылки, когда/если будет перевод -->

### Ассистент

[Вкладка «Ассистент»][assistant_tab] является полностью автоматической частью Hugin; здесь вы можете загружать изображения,
выравнивать их и *сшивать* их в панораму, не используя другие вкладки. Вкладка также содержит окна обзора панорамы и предварительного
просмотра. Этот обзор и предварительный просмотр видны и на других вкладках, с несколько другой функциональностью и иногда немного измененным макетом.

Кроме того, вы можете использовать данную вкладку в качестве первого шага при создании проекта, используя в дальнейшем некоторые или
все другие вкладки. Вы также можете переключиться на один из других режимов пользовательского интерфейса, продвинутый или экспертный,
если хотите или нуждаетесь в этом.

### Предпросмотр

На [вкладке «Предпросмотр»][preview_tab] вы можете проверить свои изображения и их позиции, баланс белого, контрольные точки (одинаковые
точки на двух перекрывающихся изображениях) *и так далее*. Изменения будут немедленно отображены в этом предварительном просмотре.
Эта вкладка предоставляет те же окна предварительного просмотра, что и [вкладка «Ассистент»][assistant_tab], и все остальные вкладки
в простом пользовательском интерфейсе.

{:#layout}
### Размещение

Вкладка «Размещение» показывает весь проект в виде диаграммы с цветными линиями, соединяющими все фотографии.

![Вкладка «Размещение»](/tr/img/layout.png)
<!-- TODO: сделать нормальные открываемые картинки -->

Зеленые линии, соединяющие изображения, показывают, что контрольные точки имеют небольшую ошибку; красные линии показывают большую ошибку.
Серые линии показывают отсутствие контрольных точек, соединяющих изображения.

Вы можете увидеть, где всё в порядке и где есть проблемы, если что-то пошло не совсем правильно. Просто нажмите на любое соединение,
и Hugin откроет [редактор контрольных точек][control_points_tab].

Используйте ползунки снизу и справа от области просмотра, чтобы изменить размер миниатюр фотографий. Это влияет только на отображение макета
и не меняет окончательную панораму.

### Проекция

[Вкладка «Проекция»][projection_tab] предназначена для настройки [проекции][projections] панорамы; некоторые проекции имеют настраиваемые
параметры, которые будут отображаться при выборе.

### Сдвиг/Смещение

[Вкладка «Сдвиг/Смещение»][move_drag_tab] используется для интерактивного сдвига центра панорамы (или размещения по какой-либо причине вне центра).

### Обрезка

[Вкладка «Обрезка»][crop_tab] отображает прямоугольник поверх вашего предварительного просмотра. Перетаскивая края этого прямоугольника,
вы можете настроить область вывода панорамы.

## Меню

### Файл

* «**Новый**» — отменить текущий проект и начать новый.
* «**Открыть...**» существующий файл проекта [Hugin][hugin], [PTGUI][ptgui], [PTAssembler][ptassembler], [autopano][autopano] или [autopano-sift][autopano-sift].
* «**Сохранить**» текущий проект как `.pto`-файл.
* «**Save as...**» — сохранить текущий проект с выбором имени файла.
* «**Most recently used projects**» — показывает список последних проектов Hugin.
* «**Запустить обработчик задач**» — запускает графический интерфейс менеджера очередей [Hugin Batch Processor][batch_processor]; обратите внимание,
  что очередь не будет обработана, если не запущен этот администратор очередей.
* «**Preferences**» — открывает окно [настроек Hugin][preferences].
* «**Выход**» из Hugin.

### Правка

* «**Отменить**» — отменяет самое последнее изменение в текущем проекте.
* «**Повторить**» повторяет отмененное.
* «**Оптимизировать**» — *отсутствует в оригинале, но есть по факту (прим. перев.)*.

### Вид

* «**Редактор панорамы**» открывает [окно редактора][panorama_editor_window], где вы можете контролировать различные состояния,
  через которые проходит рабочий процесс от набора исходных изображений до финальной панорамы.
* «**Full Screen**» открывает главное окно Hugin на полный экран. Обратите внимание, что [окно быстрого просмотра][fast_preview_window]
  также можно открыть в полноэкранном режиме.
* Флажок «**Обзор**»: показывает или скрывает окно обзора (закрепленное).
* Флажок «**Grid**»: показывает или скрывает сетку в окне обзора и предварительного просмотра (см. [вкладку «Ассистент»][assistant_tab]).

### Интерфейс

* «**Simple**»: интерфейс предлагает всю базовую функциональность для создания панорам и будет достаточен в 90% случаев.
* «**Advanced**»: в этом режиме стартовым окном становится «[Редактор панорамы][panorama_editor_window]», окно простого интерфейса остается на заднем плане.
* «**Expert**»: в дополнение к предыдущему показывает все опции и возможности тонкой настройки, доступные в Hugin.

### Справка

* «**Справка**» открывает руководство Hugin.
* «**Совет дня**»
* «**Горячие клавиши**»
* «**FAQ**»: [Часто задаваемые вопросы по Hugin][faq].
* «**О программе**» показывает соответствующее окно.


[assistant_tab]: {% link tr/hugin/assistant_tab.md %}
[preview_tab]: {% link tr/hugin/preview_tab.md %}
[control_points_tab]: {% link tr/hugin/control_points_tab.md %}
[projection_tab]: {% link tr/hugin/projection_tab.md %}
[projections]: {% link tr/projections/projections.md %}
[move_drag_tab]: {% link tr/hugin/move_drag_tab.md %}
[crop_tab]: {% link tr/hugin/crop_tab.md %}
[hugin]: {% link tr/hugin.md %}
[ptgui]: {% link tr/panotools/ptgui.md %}
[ptassembler]: {% link tr/panotools/ptassembler.md %}
[autopano]: {% link tr/tools/autopano.md %}
[autopano-sift]: {% link tr/tools/autopano-sift.md %}
[batch_processor]: {% link tr/hugin/batch_processor.md %}
[preferences]: {% link tr/hugin/preferences.md %}
[panorama_editor_window]: {% link tr/hugin/panorama_editor_window.md %}
[fast_preview_window]: {% link tr/hugin/fast_preview_window.md %}
[faq]: {% link tr/FAQ.md %}