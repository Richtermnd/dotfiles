# cheatsheet
I decided to read all user manuals and create this to help me master vim
Here is not everything, only things that I don't know or don't use before
ALso it will contain any cool things that I will find

## Moving in manual
CTRL-] go ref
CTRL-o go back


## moving
---

f<char> - search <char> forward the cursor
F<char> - search <char> backward the cursor
t<char> - same as f<char> but place cursor before
T<char> - same as F<char> but place cursor before

---
#### marks
m<a-z> - set mark
`<a-z> - goto mark (` - exact cursor position, ' - beginning of line)
m<A-Z> - set global mark
`<A-Z> - goto global mark (` - exact cursor position, ' - beginning of line)

---
#### scrolling
<line_number>G - move to <line_number> relative to top of the file
instead of G you can use H (head) for top and L (last) for bottom

CTRL-u - scroll half screen up
CTRL-d - scroll half screen down

CTRL-y - scroll line up
CTRL-e - scroll line down

CTRL-f - scroll page up
CTRL-b - scroll page down

zz - place current line at center of the screen
zt - place current line at top of the screen
zb - place current line at bottom of the screen

---
<number>% - goto but with percent of file len

## editing
#### keys
---
. - repeat last change
C - change to end of the line
s - change one char
S - change whole line
I - Start insert from ^
A - Start append from $

---
#### registers
- "<a-z>y yank to register <a-z>
- "<a-z>d delete to register <a-z>
- "<a-z>p put from register <a-z>
- "<A-Z><cmd> append result of cmd to register <a-z>

---
#### CTRL-W
- -+      decrease/increase window height
- <>      decrease/increase window width
- =       make windows equal size
- hjkl    move to the window
- HJKL    move window
- See other with :help CTRL-W

---
#### g
- gt next tab
- gT previous tab
- gf goto file under cursor (use with CTRL-W to open in new tab)
- gF goto file under cursor to specified line (ex: init.lua:10)
                                        (use with CTRL-W to open in new tab)
- gU<motion> - to uppercase
- gu<motion> - to lowercase
- g~<motion> - swap case
- :help g

---
#### macros
- q<a-z>  record macro
- "<a-z>p print content of macro
- "<a-z>$ save line as macro
- q<A-Z><content> append content to macro <a-z>
- 10.1

---
#### Cool things
- You can switch between Insert mode and Replace mode with the <Insert> key.
- *text-objects*
- *buffer-list*
- *diff-mode*
- .<cmd> exec cmd for current line
- With alt you can exec normal mode commands in insert mode (<A-p> - paste in insert mode)

---

## searching
/\<the\> - match word, not substring (will match "the", and will not "there" and "other")

---
## substituting
- %s for all file
- /c for dialog
- <range>s for specific range (1,5s - from line 1 to 5, 5s - line 5, $ - last line)
- <range> also can be a pattern, marks
- offset
- \\<n> use n-th match of pattern as replacement text
- See help
- See *global*

---
## visual mode
- You can type a sequence of commands to aplly it to selected area
- U make uppercase
- u make lowercase

---
## commands
- *saveas*
- *file*
- *only*
- *windo*
- *bufdo*
- *write*
- *read*
- !!
- write !<cmd> pass a result of write to external program (example: write !wc)
- grep (so powerfull, but needs a some keymaps to be comfortable)

---

## interesting opts
matchpairs|mps - match pattern for pairing with % key.
listchars - no more mini.indentoscope
textwidth

---

## Tricks and cool things
- hex-editing
- '<,'>g/^/m '> (reverse selected line order)
- :%s/\s\+$// trim spaces
- *modeline*
- *24.3*
- *24.4*

