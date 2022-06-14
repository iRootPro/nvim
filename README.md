# Neovim для разработки на JavaScript

Сборка NeoVim для разработки. Лично использую для разработки на: **ReactJS** и **NodeJS**.

Данная сборка будет постоянно улучшаться, ведь для vim нет предела, всегда есть что подкрутить.

Для автокомплита на данный момент используется COC.

## Управление NeoVim IDE

<details>
<summary>Основное</summary>
**ESC** - выйти в командные режим

**i** - войти в режим набора текста на текущей позиции курсора

**a -** войти в режим набора текста на следующей позиции курсора ****

**A** - войти в режим набора текста в конце текущей строки

**o** - войти в режим набора текста на строке ниже, создав её

**:q!** - выйти из редактора без сохранения

**:wq!** - сохранить изменения и выйти
</details>

<details>
<summary>Перемещеине по тексту</summary>

**h** - влево

**k** - вверх

**l** - вправо

**j** - вниз

**w** - на начало следующего слова

**e** - на конец следующего слова

**b** - на начало предыдущего слова

**0** - в начало строки

**$** - в конец строки

**gg** - начало документа

**G** - конец документа

**5gg** - на строку 5

**/test** - найти вхождение по слову

**n** - перейти к следующему вхождению

**N** - перейти к предыдущему вхождению

**?test** - найти вхождение в документе выше и перейти к нему

**vi’** - выделить текст между кавычками (скобками и так далее)
</details>

<details>
<summary>Удаление, копирование, вставка</summary>

**x** - вырезать символ под курсором или выделенный текст

**dd** - вырезать всю строку

**dw** - вырезать до конца слова от текущей позиции

**diw** - вырезать все слово, не зависимо где находится курсор

**d$** - вырезать до конца строки

**p** - вставить раннее вырезанное справа от курсора

**P** - вставить ранее вырезанное слева от курсора

**u** - отмена предыдущего действия

**CTRL + R** - повтор отмененного действия

**.** - повторить последнее действие еще раз

**5dw** - удалить пять слов

**V** - режим выделения целой строки

**y** - копирование

**p** - вставка после курсором

**P** - вставка перед курсором
</details>

<details>
<summary>Комментирование</summary>

**gcc** - комментирование/разкоментирование строки (плагин vim commentary)

**gc** - комментирование/разкомментаирование выделенного блока
</details>

<details>
<summary>Telescope</summary>

**Ctrl + P** - поиск файла

**Ctrl + F** - поиск по файлам (grep)

**Ctrl + B** - последние открытые файлы (buffers)

**Ctrl + T** - git worktree

**Ctrl + G** - все ветки git 
</details>

<details>
<summary> Работа с COC (автодопонение кода, переход к обхявленной функции и т.д.)</summary>

**gd** - перейти к объявлению 

**K** - показать документацию

**space + rn** - переименование (рефакторинг) 

**space + f** - запуск prettier

**space + l** - запуск eslint

**Ctrl + R** - обновить файл (refrash)

**space + .** - вызвать окно с возможными действиями
</details>

<details>
<summary>Работа с рабочим пространством</summary>

**vs** - вертикальное разделение

**sp** - горизонтальное разделение

**tn** - новый таб

**tk** - следующий таб

**tj** - предудущий таб

**to** - закрытие табов

**Ctrl + n** - открытие справа дерево файлов

**space + t** - открытие терминала
**space + g** - открытие lazygit в терминале

**Ctrl + O** - возвращение к прошлой локации (например, к прошлому файлу редактирования)
</details>

<details>
<summary>Команды</summary>

**:MarkdownPreview** - запускает браузер с просмотром markdown документа в реальном времени

**:ZenMode** - режим zen

</details>


<details>
<summary>Терминал</summary>

**Ctrl+\\** - открыть/закрыть терминал

</details>

## Внешний вид (скриншоты)

![Neovim + Open file](./images/screenshot_code.png)
NeoVim + Open file. Терминал iTerm2 


### Видео

![Neovim Video](./images/neovim.gif)

