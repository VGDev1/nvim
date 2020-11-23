# VIM CHEATSHEET

- [Getting Started](#getting-started)
- [Navigation](#navigation)
  - [Jumps](#jumps)
  - [Other Navigation](#other-navigation)
- [Searching](#searching)
- [Formatting](#formatting)
- [Text Manipulation](#text-manipulation)
  - [Selecting and manipulating](#selecting-and-manipulating)
- [Deleting](#deleting)
- [Execute Commands](#execute-commands)
- [Substitution](#substitution)
- [Marks](#marks)
- [Macros](#macros)
- [Ignoring Case](#ignoring-case)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>

### Getting Started

- Use these commands from inside a `vim` session.
  - To open a test vim session, un this from the command-line: `vim ~/test-vim.sh`
- Text inside `{}` is swappable with the adjacent characters

### Navigation

#### Jumps

```
``      # jump forward
''      # jump back

CTRL-i  # jump forward
CTRL-o  # jump back

)       # jump forward one sentence (uses '.' to identify sentence)
(       # jump backward one sentence (uses '.' to identify sentence)
}       # jump forward one paragraph
{       # jump backward one paragraph

G       # Jump cursor to bottom of file
gg      # jump cursor to top of file
{#}G    # jump cursor to the given line number
{#}gg   # jump cursor to the given line number
:{#}    # jump cursor to the given line number
%       # Jump to closing symbol - (, [, or {

H       # jump to top of current screen
M       # jump to middle of current screen
L       # jump to bottom of current screen

'.      # jump to last-changed line

:jumps  # display last 100 jumps
```

#### Other Navigation

```
 _      # (underscore) move to the first non-whitespace character on the same line the cursor is on
{+-}    # move to first non-whitespace character on next/revious line
0       # move cursor to start of line
a       # append cursor to end of line and enters insert mode
b	    # move to beginning of previous word
B       # move to beginning of previous word before a whitespace
e	    # move to end of word
E       # move to end of word before whitespace
w       # move forward to beginning of next word
W       # move to beginning of next word after a whitespace
2{we}   # move cursor 2 words forward/back
f{}     # to next 'X' after cursor, in the same line (X is any character)
F{}     # to previous 'X' before cursor (f and F put the cursor on X)
t{}     # move 'til' next 'X' (similar to above, but cursor is before X)
T{}     # move 'til' previous 'X'

;       # repeat above, in same direction
,       # repeat above, in reverse direction
```

```
CTL-G   # Shows location in the file and file status

CTRL-b  # Back/up one screen
CTRL-u  # Back/up 1/2 screen
CTRL-f  # Forward/down one screen
CTRL-d  # Forward/down 1/2 screen
```

### Searching

```
/                  # forward search (or use up/down arrow to scroll history)
/                  # repeat previous search
?                  # backward search
/\c                # case insensitive search (e.g. /\cSearchTerm)
n                  # Cycles forward through results
N                  # Cycles backwards through results
*                  # Search forward for next occurence of word nearest cursor. Case insensitive
#                  # Same as `*` but backward
g{*#}              # Same as */#, but works for partial matches

```

### Formatting

```
>>       # Indents highlighted text
{#}>>    # Indents highlighted text for specified times
```

### Text Manipulation

```
x           # Delete character
xp          # Swap characters (deletes first then puts after second)
p           # Puts previously deleted text below the cursor
]p          # Same as above, but aligns block with line above
r{x}        # Replaces text with the letter after r
R           # Replaces more than one character, entering you into Insert Mode
ce          # Changes until end of a word and enter Insert Mode. This is a better option than d[motion] when you want to insert text
[cdy]it     # "[change, delete, yank] inside tag"
c$          # Changes until end of line
o ; O       # Opens below, above -- enters you into Insert Mode
a           # Insert text AFTER the cursor

u           # Undo previous command
CTL-r       # Re-do prevoius command

Y           # Copies entire line (use *P* or *p* to then paste before/after current line)
y           # Yanks (copies) text
yw	        # yanks everything from cursor to end of word
yiw	        # yanks entire word regardless of cursor location
:2,5y       # Yanks everything from lines 2-5
:m{#,0, $}  # Moves line to a line number or before first or after last line

i | CTRL-w      # While in insert mode, deletes to the left of cursor until last space
```

#### Selecting and manipulating

```
~                           # Toggles capitalization of selected text (requires Twiddle case)

V                           # Select entire line
vip                         # Select current paragraph
vap                         # Select current paragraph + whitespace after it
Vu                          # Lowercase line
VU                          # Uppercase line

# Note: may have to add `%` before these commands if not using an IDE
vi{(["'b}                  # Selects everything between `()`s or `[]`s or `""`s or `''`s or `<block>` on current line
ci{(["'}                   # Changes everything between ()s or []s or ""s or ''s on current line
di{(["' or %di{symbol}     # Deletes everything between {}s ()s or []s or ""s or ''s on current line


CTRL-v                      # Vertical / column select
```

### Deleting

```
dw      		# Deletes from cursor to end of word
di[]            # Delete 'along with' - `da()` deletes everything in parenthesis and the parenthesis themselves
diw     		# "Delete a word" (deletes entire word under cursor)
ciw     		# "Change a word" (deletes the word under the cursor and put you in insert mode)
D           # Deletes to end of line
d$      		# (same as ^)
de      		# Deletes to end of current (short) word
dE              # Deletes full word (until whitespace)
dd      		# Deletes entire line
C			# Deletes to end of line and enters Insert mode. Pair with `_` for quickly replace lines
:a,bd   		# Deletes from a to b
:,bd    		# Deletes from current location to b
:%s/phrase//gc		# Delete each 'phrase' in document, prompting for comfirmation

```

### Execute Commands

```bash
:!                          #Executes external shell command
v {motion} :w FILENAME      #Saves part of the file that you highlighted to current directory
:r FILENAME                 #Retrieves the highlighted text that you previously saved and enter it into current VIM session
:r !COMMAND [e.g. `:r !ls]  #Reads the output of an external command in the VIM session. Useful for log review.
.                           # Repeats last command
```

### Substitution

```
:s                  # Repeat last substitution
:%s//new/g          # Substitute last searched pattern with 'new'
:s/old/new/g        # Substitute 'old' for 'new' in current line only
:s/old/new/gc       # Globally substitutes 'old' for 'new', prompting for confirmation for each substitution
:s/old/new/g       # Globally substitutes 'old' for 'new' without prompting for confirmation
:s/'/"/g            # Substitutes all 's for "s (on current line(?)). Can be combined with visual block mode to only substitute in selected block

:#,#s/old/new/g     # Substitutes 'old' for 'new', where #,# are the line numbers of the range of lines to substitute
:6,11s/bad/good/g    # Substitutes in lines 6-11, including 6 and 11.
```

### Marks

```
:marks              # List all current marks
ma                  # Set mark `a` at current cursor location
'a                  # Jump to line of mark 'a' (first character)
`a                  # Jump to line+position of mark 'a'
{dyc}'a             # {action} from current line to line of mark a
{dyc}`a             # {action} from current cursor position to position of mark a
```

### Macros

```
q<letter><commands>q        # Record macro
@<letter>                   # Execute macro
@@                          # Repeat macro
<number>@<letter>           # Execute macro <number> times
```

### Ignoring Case

```bash
EXAMPLE 1:
    /ignore\c       #Searches for 'ignore' and ignores case
EXAMPLE 2:
    /ignore         #Searches for 'ignore'
    :set ic         #Sets 'ignore case' option
    :set hls is     #Sets hlsearch in search options
    /ignore         #Type command again for new options to take effect
    :set noic       #Disables ignoring case again
    :nohls          #Disables highlighting
```
