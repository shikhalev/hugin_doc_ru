---
title: Вкладка «Проекция»
status: done
last_modified_at: 2022-11-22
origin: https://wiki.panotools.org/Hugin_Projection_tab
---
Эта вкладка предназначена для настройки [проекции][projections] панорамы; некоторые проекции имеют настраиваемые параметры,
которые будут отображаться при выборе.

![Вкладка «Проекция»](/assets/img/tr/projection-tab.png)

## ![Уместить](/assets/img/tr/fit.png) Уместить

Эта кнопка не меняет никаких параметров входного изображения; она просто перенастраивает выходное [поле зрения][field_of_view] так,
чтобы все входные изображения были видны. Если все изображения смещены от центра, тогда будет много черного пространства.

## Поле зрения

Горизонтальный и вертикальный углы обзора выходного изображения.

## Проекция

Используйте раскрывающийся список, чтобы изменить выходную проекцию панорамы. Обратите внимание, что для некоторых проекций
ползунки полосы прокрутки для изменения [поля зрения][field_of_view] отключены. Если у вас возникли проблемы, переключитесь
на [эквидистантную проекцию][equirectangular], отрегулируйте поле зрения и вернитесь обратно.

## Направляющие

Направляющие отображают вспомогательные линии в предварительном просмотре, чтобы определить, соответствует ли ваша панорама
некоторым основным правилам композиции. Широко известные примеры:
«[правило третей<sup>🗗</sup>](https://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%B0%D0%B2%D0%B8%D0%BB%D0%BE_%D1%82%D1%80%D0%B5%D1%82%D0%B5%D0%B9)»
и «золотое сечение».


[projections]: {% link _tr/projections/index.md %}
[field_of_view]: {% link _tr/glossary/field_of_view.md %}
[equirectangular]: {% link _tr/projections/equirectangular.md %}
