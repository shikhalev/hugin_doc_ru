---
title: Enblend
origin: https://wiki.panotools.org/Enblend
status: done
last_modified_at: 2022-11-25
---
## Обзор

**Enblend** накладывает несколько изображений друг на друга так, чтобы сделать стыки невидимыми.
Он работает с широким спектром форматов файлов изображений и поддерживает изображения с разрядностью
8, 16 или 32 бита (HDR с пла­ва­ю­щей точкой) на канал.

Enblend используется как плагин для [PTGui][ptgui], [Hugin][hugin] и [PTAssembler][ptassembler], отдельно
из ко­ман­д­ной строки, или с помощью [Enblend Front End][enblend_front_end][^front].

Некоторые основные функции включают в себя:

- Корректирует изображения по ли­нии стыка, чтобы избежать несоответствий между исходными изображениями,
  таких как ошибки [параллакса][parallax].

- Поддерживает сохранение и загрузку масок.

Enblend и полная документация (руководства для каждой версии и ссылка «NEWS» для примечаний к выпуску)
доступны на [сай­те проекта][project].

## Использование из командной строки

Аргументы и параметры могут меняться между версиями, а также зависеть от про­цес­са сборки. Рекомендуется
полагаться на ру­ко­вод­с­т­во для конкретной версии Enblend, доступное на [до­маш­ней странице Enblend][project].

Enblend поддерживает входные файлы [Cropped TIFF][cropped_tiff], а также другие форматы файлов и разрядность.
Пожалуйста, обратитесь к ру­ко­вод­с­т­ву.

[Справочное руководство Enblend][enblend_reference_manual][^refm] основано на ин­фор­ма­ции об ус­та­рев­шей версии Enblend.

## Где взять?

Enblend имеет открытый исходный код. Таким образом, вы можете скачать его бесплатно со страницы проекта,
ссылка на ко­то­рую приведена ниже. Enblend входит в со­с­тав основных дистрибутивов Linux. Вы можете получить
последнюю версию, используя систему управления программными пакетами дистрибутива. Для Ubuntu Linux откройте
терминал и введите:

{% highlight console %}
$ sudo apt-get install enblend
{% endhighlight %}

Вот и все!

Enblend находится в постоянном развитии. Если вы хотите получить передний край, прочитайте раздел о разработке ниже.

## Разработка

Enblend — это проект с от­кры­тым исходным кодом и поэтому очень сильно зависит участия добровольцев. Если у вас есть
навыки программирования, вы можете посмотреть исходный код и внести свой вклад в него. Даже если у вас нет навыков
кодирования, у вас, скорее всего, есть некоторые навыки, которые могли бы пригодиться проекту, и вы всегда можете
поделиться своим временем. Задачи, требующие внимания, часто меняются, как и необходимый набор навыков и ресурсов.
При­со­е­ди­няй­тесь к списку рассылки Hugin-ptx, чтобы узнать, что происходит в данный момент и как вы можете помочь.
Даже просто тестирование и обратная связь помогают.

Чтобы быть на переднем крае, следуйте процессу разработки/сборки Hugin[^hugin].

- [Ubuntu Linux][ubuntu]

- [Fedora Linux][fedora]

- [Mac OSX][osx]

- [Windows][windows]

## Смотрите также

Руководства с Enblend:

- [Использование enblend для заполнения «дыры в полу»][hole]

- [Как использовать enblend для исправления изображений зенита и надира][zenith]

- [Как удалить ошибки смешивания, сделанные enblend и enfuse, в зените и надире (автоматически)][error]

## Ссылки

- [Страница проекта Enblend][project]

- [xblend][xblend][^xblend]

[^front]: ПО недоступно, перевод заглушки не требуется.

[^refm]: На Panotools Wiki стоит заглушка со ссылкой на историческую страницу, которую я тут и использовал.
         Переводить заглушку смысла нет.

[^hugin]: Вообще не понял, почему тут произошел такой переход к процессу разработки Hugin...

[^xblend]: Ссылка не работает.

[ptgui]: {% link _tr/panotools/ptgui.md %}
[hugin]: {% link _tr/hugin/index.md %}
[ptassembler]: {% link _tr/panotools/ptassembler.md %}
[enblend_front_end]: https://wiki.panotools.org/Historical:Enblend_Front_End
[parallax]: {% link _tr/glossary/parallax.md %}
[project]: https://enblend.sourceforge.net/
[cropped_tiff]: {% link _tr/glossary/cropped_tiff.md %}
[enblend_reference_manual]: https://wiki.panotools.org/index.php?title=Enblend_reference_manual&oldid=13483
[ubuntu]: {% link _tr/tutorials/hugin_compiling_ubuntu.md %}
[fedora]: {% link _tr/tutorials/hugin_compiling_fedora.md %}
[osx]: {% link _tr/tutorials/hugin_compiling_osx.md %}
[windows]: {% link _tr/tutorials/hugin_compiling_windows.md %}
[hole]: {% link _tr/tutorials/using_enblend_to_fill_the_Hole_in_the_floor.md %}
[zenith]: {% link _tr/tutorials/how_to_use_enblend_for_patching_zenith_and_nadir_images.md %}
[error]: {% link _tr/tutorials/how_to_remove_blending_error_caused_by_enblend_and_enfuse_at_zenith_and_nadir_automatic.md %}
[xblend]: http://www.kekus.com/xblend
