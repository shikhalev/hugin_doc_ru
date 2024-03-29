---
title: Альфа-канал
origin: https://wiki.panotools.org/Alpha_channel
status: done
last_modified_at: 2022-11-22
---
Канал изображения, содержащий маску или выделение. **Альфа-канал** — это дополнительный канал изображения, такой же,
как красный, зеленый или синий. Он может содержать любую информацию в виде изображения в градациях серого, но обычно он
используется для хранения выделения или маски.

- Черные пиксели альфа-канала обычно обозначают замаскированные, невидимые или невыбранные пиксели основного изображения.
- Белые пиксели альфа-канала обозначают немаскированные, видимые или выбранные пиксели.
- Серые пиксели альфа-канала обозначают более или менее полупрозрачные пиксели в зависимости от яркости серого.

Как [`enblend`][enblend], так и [`smartblend`][smartblend] используют альфа-канал для определения положения стыка
при смешивании. Подробности см. в [Руководстве по использованию enblend для исправления изображений зенита и надира][howto].

Дополнительную информацию см. в [википедии][wiki].

[enblend]: {% link _tr/tools/enblend.md %}
[smartblend]: {% link _tr/panotools/smartblend.md %}
[howto]: {% link _tr/tutorials/how_to_use_enblend_for_patching_zenith_and_nadir_images.md %}
[wiki]: https://en.wikipedia.org/wiki/Alpha_compositing
