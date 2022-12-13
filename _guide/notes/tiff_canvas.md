---
title: Размер холста в TIFF
description: Некоторая странность в файлах TIFF, генерируемых Hugin
status: done
software:
  - "Hugin v2021.0.0"
  - "GIMP v2.10.30"
  - "Darktable v4.0.1"
  - "Linux Mint 21 Vanessa"
image: /assets/img/notes/tiff_canvas/cropped.jpg
last_modified_at: 2022-12-03
---
В [TIFF][tiff]-фай­лах, генерируемых Hugin, обнаружилась интересная особенность, которую в не­ко­то­рых случаях
нужно учитывать. Формат сложный, многое умеет, и в част­нос­ти там есть такой объект как «холст», размеры и
расположение которого необязательно совпадают с изо­бра­же­ни­ем.

Так вот, в фай­лах, созданных Hugin, холст и изображение не сов­па­да­ют. Вот так это[^src] выглядит в [GIMP][gimp].

{% include image.liquid place="center" width=800 src="/assets/img/notes/tiff_canvas/fused.jpg" %}

И, что тоже интересно, после обработки такого файла в [Dark­table][darktable], при экспорте также в 16-бит­ный TIFF,
проблема сохраняется и даже становится более заметной.

{% include image.liquid place="center" width=800 src="/assets/img/notes/tiff_canvas/cropped.jpg" %}

Если взять файл панорамы и в GIMP через меню «Изображение» задать «Размер холста по раз­ме­ру слоев», то
и дальнейшая обработка в Dark­table сохранит это соответствие.

Почему это проблема? Лично я столкнулся с тем, что при на­рез­ке такого изображения посредством [Ima­ge­Ma­gick][magick]
координаты резов отсчитываются относительно именно «холста», а не ре­аль­ной картинки. Возможно, еще в ка­ких-то
случаях это может быть важно.

[^src]: Для иллюстрации взяты файлы, полученные в про­цес­се написания статьи [«Быстрый старт»][start].

[tiff]: {% link _guide/ref/format/tiff.md %}
[gimp]: {% link _guide/tools/other/gimp.md %}
[darktable]: {% link _guide/tools/other/raw_converters.md %}
[start]: {% link _guide/hugin/quick_start.md %}
[magick]: {% link _guide/tools/other/magick.md %}
