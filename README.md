# My .emacs.d based on emacs-bootstrap

http://emacs-bootstrap.com

Your on-the-fly Emacs development environment.

Emacs-bootstrap uses opinionated code templates which will be used to generate your emacs configurations.
It enables you to select the programming languages you work with the most and will generate enough Emacs configs
to get you started crunching code.

## Shortcuts
Here are some basic shortcuts that Emacs provides along with configured shortcuts by Emacs-bootstrap:

Note that C- means pressing your Control key + some other key. For example, C-x means Control + X.
Same goes for M which is your Meta key. That can be the Escape key on your keyboard or the ALT key.

One of the packages installed is called 'which-key' which displays the list of available keys after a certain prefix.
Try it out, press C-x and which-key will display available shortcuts that you can use to invoke a certain functionality.

## General
| Shortcut          | Function                                                       | Provider |
|-------------------+----------------------------------------------------------------+----------|
| C-x C-f           | Open file                                                      | Emacs    |
| C-x C-s           | Save file                                                      | Emacs    |
| C-x C-r           | Recent files                                                   | Emacs    |
| C-x C-b           | Switch buffer                                                  | Emacs    |
| C-x C-k           | Kill buffer                                                    | Emacs    |
| C-s               | Search in file                                                 | Emacs    |
| M-%               | Find and Replace                                               | Emacs    |
| C-x 1             | Only show this buffer                                          | Emacs    |
| C-x 2             | Split horizontally                                             | Emacs    |
| C-x 3             | Split Vertically                                               | Emacs    |
| C-x 0             | Remove current split                                           | Emacs    |
| C-g               | To quit a partially entered command                            | Emacs    |
| C-u <#> <command> | Repeat the <command> <#> times. //C-u 10 v// Writes vvvvvvvvvv | Emacs    |
| C-x C-z eller C-z | Suspend frame (send to background)                             | Emacs    |
| C-u M-!           | Kör ett shell-command och få output till där cursorn är        | Emacs    |
| C-x z             | Repeat last command                                            | Emacs    |


## Bookmarks
| Shortcut            | Function            | Description                                             | Provider |
|---------------------+---------------------+---------------------------------------------------------+----------|
| C-x r m             | bookmark-set        | set a bookmark at the current location (e.g. in a file) |          |
| C-x r b             | bookmark-jump       | jump to a bookmark                                      |          |
| C-x r l             | bookmark-bmenu-list | list your bookmarks                                     |          |
| M-x bookmark-delete | bookmark-delete     | delete a bookmark by name                               |          |

## Navigation and jumping around
| Shortcut         | Function            | Description                              | Provider / Package                  |
|------------------+---------------------+------------------------------------------+-------------------------------------|
| C-space          | set-mark-command    | Mark location                            | Emacs                               |
| C-u C-space      |                     | Goto mark                                | Emacs                               |
| M-g M-g          | goto-line           | Goto line                                | Emacs                               |
| M-g g            | avy-goto-line       | Goto line                                | Avy                                 |
| M-g w            | avy-goto-word-1     | Goto word beginning with...              | Avy                                 |
| M- <             | beginning-of-buffer | Starten av buffer                        | Emacs                               |
| M- >             | end-of-buffer       | Slutet av buffer                         | Emacs                               |
| C-v              | scroll-up-command   | Page down                                | Emacs                               |
| M-v              | scroll-down-command | Page up                                  | Emacs                               |
| C-c spc          | avy-goto-char       | Gå till bokstav...                       | Avy                                 |
| C-x spc          | avy-goto-char-2     | Gå till 2 bokstäver...                   | Avy                                 |
| C-=              |                     | Expand Region (Smart code selection)     | Bootstrap / Expand-region           |
| M-x or (C-x C-m) |                     | Ivy-counsel / Helm (Completion frontend) | Bootstrap / Ivy / Helm              |
| C-x c k          |                     | Emacs kill ring (Emacs clipboard)        | Bootstrap / Ivy / Helm              |
| C-x v            |                     | Open file in project                     | Bootstrap / Projectile              |
| C-x c p          |                     | Search in project                        | Bootstrap / Projectile-ag           |
| C-x s            |                     | Advanced search in file                  | Bootstrap / Ivy-swiper / Helm-swoop |
| C-x Up           |                     | Go to buffer above (In split)            | Bootstrap / Windmove                |
| C-x Down         |                     | Go to buffer below (In split)            | Bootstrap / Windmove                |
| C-x Left         |                     | Go to buffer on the left (In split)      | Bootstrap / Windmove                |
| C-x Right        |                     | Go to buffer on the right (In split)     | Bootstrap / Windmove                |


## Marking
| Shortcut | Function               | Description                    | Provider / Package |
|----------+------------------------+--------------------------------+--------------------|
| C-x h    | mark-whole-buffer      | Mark whole buffer              | Emacs              |
| C-c C-e  | expand-region          | Expand selection. char -> word | Emacs              |
| M-j      | mc/mark-next-like-this | Mark next like this            | multiple-cursors   |
| C-c M-j  | mc/mark-all-like-this  | Mark all like this             | multiple-cursors   |


## Seach and replace
| Shortcut                 | Function             | Description                                                                  | Provider / Package |
|--------------------------+----------------------+------------------------------------------------------------------------------+--------------------|
| M-x rgrep                | rgrep                | Recursive search                                                             |                    |
| M-x query-replace-regexp | query-replace-regexp | Search/replace with regexp. "y" replace one, "!" replaces all, "n" skips one |                    |
| M-%                      | query-replace        | Seach and replace                                                            |                    |
| C-x r t                  | string-rectangle     | Insert a rectangle with chars                                                |                    |
| C- -                     | undo-tree-undo       | Undo                                                                         |                    |
| C-s C-w                  | isearch-forward      | Search forward with word under cursor                                        |                    |
| C-s C-s                  | isearch-forward      | Repeat last search                                                           |                    |


## Rectangle
| Shortcut | Function       | Description                    | Provider / Package |
|----------+----------------+--------------------------------+--------------------|
| C-x r k  | kill-rectangle | Delete the region-rectangle    |                    |
| C-x r y  | yank-rectangle | Yank the last killed rectangle |                    |


## Macro
| Shortcut | Function                             | Description                    | Provider / Package |
|----------+--------------------------------------+--------------------------------+--------------------|
| F3       | kmacro-start-macro-or-insert-counter | Start recording keyboard input |                    |
| F4       | kmacro-end-or-call-macro             | Stop recording / Run macro     |                    |


## Info
| Shortcut       | Function             | Description                                               | Provider / Package |
|----------------+----------------------+-----------------------------------------------------------+--------------------|
| C-h k          | describe-key         | What command does this sequence do, and tell me about it. |                    |
| M-=            | count-words-region   | Count words in region                                     |                    |
| C-x =          | what-cursor-position | Info about char under cursor                              |                    |
| C-h a          | command-apropos      | What commands work like this...?                          |                    |
| C-h c          | describe-key-briefly | What command does this key sequence do?                   |                    |
| C-h b          | describe-bindings    | What are the key bindings for this buffer?                |                    |
| C-h l          | view-lossage         | What are the last 100 characters typed?                   |                    |
| C-h w          | where-is             | What is the key binding for this?                         |                    |
| C-h f          | describe-function    | What does this function do?                               |                    |
| C-h v          | describe-variable    | What is this variable?                                    |                    |
| C-h m          | describe-mode        | Tell me about this mode.                                  |                    |
| C-h s          | describe-syntax      | What is the syntax table for this buffer?                 |                    |
| M-x linum-mode | linum-mode           | Turn on/off line numbers                                  |                    |


## Keys
| Shortcut | Function         | Description                                               | Provider / Package |
|----------+------------------+-----------------------------------------------------------+--------------------|
|          | describe-key     | What command does this sequence do, and tell me about it. |                    |
|          | global-unset-key |                                                           |                    |
|          | global-set-key   |                                                           |                    |

## Programming language specific shortcuts:

| Shortcut | Function                                                 | Programming Language | Provider / Package       |
|----------|----------------------------------------------------------|----------------------|--------------------------|
| C-x p e  | Pyenv activate in current project                        | Python               | python-mode, elpy, pyenv |
| M-.      | Go to definition                                         | Python               | python-mode, elpy, pyenv |
| M-,      | Navigate back to previous position                       | Python               | python-mode, elpy, pyenv |
|          |                                                          |                      |                          |
| C-c C-r  | Remove unused imports                                    | Golang               | go-mode                  |
| C-c C-g  | Go to imports                                            | Golang               | go-mode                  |
| M-.      | Go to defintion                                          | Golang               | go-mode                  |
|          |                                                          |                      |                          |
| C-c j r  | JavaScript refactor mode                                 | JavaScript           | js2-mode, js2-refactor   |
| C-c C-b  | Send the buffer to the inferior JavaScript process       | JavaScript           | js2-mode, js-comint      |
| C-c C-l  | Load a file in the javaScript interpreter                | JavaScript           | js2-mode, js-comint      |
| C-x C-e  | Send previous sexp to inferior JavaScript process        | JavaScript           | js2-mode, js-comint      |
| C-M-x    | Send previous sexp to inferior JavaScript process and go | JavaScript           | js2-mode, js-comint      |
|          |                                                          |                      |                          |
| C-j      | emmet-mode expand snippet                                | HTML                 | web-mode, emmet-mode     |
| C-c [    | emmet-mode previous edit point                           | HTML                 | web-mode, emmet-mode     |
| C-c ]    | emmet-mode next edit point                               | HTML                 | web-mode, emmet-mode     |
| C-c o b  | Open the current file in the browser                     | HTML                 | web-mode                 |
