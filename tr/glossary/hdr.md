---
title: HDR
description: Расширенный динамический диапазон (High Dynamic Range)
origin: https://wiki.panotools.org/HDR
status: done
last_modified_at: 2022-11-22
---
HDR означает расширенный [динамический диапазон][dynamic_range] (*High Dynamic Range*). Этот термин используется
для обозначения методов и изображений, которые позволяют захватывать и воспроизводить сцены
с высоким [динамическим диапазоном][dynamic_range].

HDR используется более или менее всегда, чтобы получить больше деталей из теней и/или светов.
Чтобы понять, как работают так называемые «HDR-техники», важно различать два ограничения, которые влияют на динамический
диапазон в фотографии и изображении. Первое ограничение связано с устройством захвата, т.е. с камерой.
Второе ограничение идет от устройства вывода, т.е. монитора или принтера.


- Ограничение **камеры**: стандартные цифровые камеры могут захватывать [динамический диапазон][dynamic_range] не более 1000:1, что
  намного меньше динамического диапазона большинства уличных сцен. Это ограничение обычно преодолевается путем создания нескольких
  экспозиций одной и той же сцены (для чего используется функция «Автоматический [брекетинг][bracketing] экспозиции», доступная
  во многих цифровых камерах).


- Ограничение **отображения**: стандартные мониторы имеют довольно низкий динамический диапазон, около 100:1, которого недостаточно даже
  для корректного отображения [RAW][raw]-данных, снятых стандартной камерой. Это ограничение устраняется с помощью
  [тональной компрессии][tone_mapping] или методов, которые напрямую смешивают экспозицию. Смешивание экспозиции может быть выполнено
  либо вручную в [Photoshop][photoshop], либо полувручную с помощью экшенов Photoshop (см. [«Контрастное смешивание»][contrast_blending]
  и [«HDR for Dummy»][hdr_for_dummy] Jook Leung'а), либо автоматически в специализированном программном обеспечении (см. [Photomatix][photomatix],
  [FDRTools][fdrtools] или [pfstools][pfstools] — сравнение см. в [«Сжа­тие HDR»][hdr_compression]).

Ограничения камеры и дисплея можно преодолеть с помощью специального оборудования, такого как камера [SpheroCam HDR][spherocam_hdr]
и [Brightside HDR Display][brightside_hdr]. Однако пока такое оборудование остается очень дорогим.

Изображения HDR хранятся в формате с высокой битовой глубиной и/или с плавающей запятой. Некоторые форматы HDR:

- `.hdr` Формат Radiance [RGBE][rgbe]
- `.tif` [TIFF][tiff] с плавающей точкой
- `.pfm` Portable floatmap
- `.float` Сырые бинарные данные с плавающей точкой
- `.exr` Формат OpenEXR [EXR][exr]

[Графический интерфейс][gui_frontends] инструментов панорамы **[Hugin][hugin]** поддерживает сшивание изображений [TIFF][tiff]
с плавающей запятой и Radiance [RGBE][rgbe] HDR. Подробности см. на странице [«Работа с HDR в Hugin»][hdr_workflow_with_hugin].
Инструмент [`enblend`][enblend] также поддерживает смешивание данных TIFF HDR с плавающей запятой, но пока не поддерживает данные RGBE.

Дополнительную информацию о HDR можно найти: в Википедии [w:High Dynamic Range Imaging][wiki] и в [HDR Image FAQ][hdr_faq].

Кроме того, см. [«Обзор ПО для HDR»][hdr_software_overview], [«Пакетное слияние изображений, снятых с рук»][batch_merge_handheld_images]
и [`enfuse`][enfuse].


[dynamic_range]: {% link tr/glossary/dynamic_range.md %}
[bracketing]: {% link tr/glossary/bracketing.md %}
[raw]: {% link tr/glossary/raw.md %}
[photoshop]: {% link tr/glossary/photoshop.md %}
[tone_mapping]: {% link tr/glossary/tone_mapping.md %}
[contrast_blending]: {% link tr/glossary/contrast_blending.md %}
[hdr_for_dummy]: http://360vr.com/HDRforDummies/
[photomatix]: {% link tr/glossary/photomatix.md %}
[fdrtools]: {% link tr/glossary/fdrtools.md %}
[pfstools]: {% link tr/glossary/pfstools.md %}
[hdr_compression]: {% link tr/glossary/hdr_compression.md %}
[spherocam_hdr]: http://spheron.com/spheron/public/en/hdri_spherocamhdr/hdri_spherocamhdr.php
[brightside_hdr]: http://www.brightsidetech.com/
[rgbe]: {% link tr/glossary/rgbe.md %}
[tiff]: {% link tr/glossary/tiff.md %}
[exr]: {% link tr/glossary/openexr.md %}
[gui_frontends]: {% link tr/panotools/gui_frontends.md %}
[hugin]: {% link tr/hugin/index.md %}
[hdr_workflow_with_hugin]: {% link tr/tutorials/hdr_workflow_with_hugin.md %}
[enblend]: {% link tr/tools/enblend.md %}
[wiki]: http://www.wikipedia.org/wiki/High_dynamic_range_imaging
[hdr_faq]: http://www.hdrsoft.com/resources/dri.html
[hdr_software_overview]: {% link tr/hdr_software_overview.md %}
[batch_merge_handheld_images]: {% link tr/tutorials/batch_merge_handheld_images.md %}
[enfuse]: {% link tr/tools/enfuse.md %}
