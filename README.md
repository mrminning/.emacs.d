# emacs-bootstrap

http://emacs-bootstrap.com

Your on-the-fly Emacs development environment.

Emacs-bootstrap uses opinionated code templates which will be used to generate your emacs configurations.
It enables you to select the programming languages you work with the most and will generate enough Emacs configs
to get you started crunching code.

* Shortcuts
Here are some basic shortcuts that Emacs provides along with configured shortcuts by Emacs-bootstrap:

Note that C- means pressing your Control key + some other key. For example, C-x means Control + X.
Same goes for M which is your Meta key. That can be the Escape key on your keyboard or the ALT key.

|----------|----------------------|----------|
| Shortcut | Function             | Provider |
|----------|----------------------|----------|
| C-x C-f  | Open file            | Emacs    |
| C-x C-s  | Save file            | Emacs    |
| C-x C-b  | Switch buffer        | Emacs    |
| C-x C-k  | Kill buffer          | Emacs    |
| C-s      | Search in file       | Emacs    |
| M-%      | Find and Replace     | Emacs    |
| C-x 1    | Only show 1 buffer   | Emacs    |
| C-x 2    | Split horizontally   | Emacs    |
| C-x 3    | Split Vertically     | Emacs    |
| C-x 0    | Remove current split | Emacs    |
|----------|----------------------|----------|

One of the packages installed is called 'which-key' which displays the list of available keys after a certain prefix.
Try it out, press C-x and which-key will display available shortcuts that you can use to invoke a certain functionality.

|------------------|------------------------------------------|-------------------------------------|
| Shortcut         | Function                                 | Provider / Package                  |
|------------------|------------------------------------------|-------------------------------------|
| C-C Space        | Ace-jump-mode (Code navigation)          | Bootstrap / Ace-Jump                |
| C-=              | Expand Region (Smart code selection)     | Bootstrap / Expand-region           |
| M-x or (C-x C-m) | Ivy-counsel / Helm (Completion frontend) | Bootstrap / Ivy / Helm              |
| C-x c k          | Emacs kill ring (Emacs clipboard)        | Bootstrap / Ivy / Helm              |
| C-x v            | Open file in project                     | Bootstrap / Projectile              |
| C-x c p          | Search in project                        | Bootstrap / Projectile-ag           |
| C-x s            | Advanced search in file                  | Bootstrap / Ivy-swiper / Helm-swoop |
| C-x UP           | Go to buffer above (In split)            | Bootstrap / Windmove                |
| C-x Down         | Go to buffer below (In split)            | Bootstrap / Windmove                |
| C-x Left         | Go to buffer on the left (In split)      | Bootstrap / Windmove                |
| C-x Right        | Go to buffer on the right (In split)     | Bootstrap / Windmove                |
|------------------|------------------------------------------|-------------------------------------|

my-keys-minor mode
|-----------|---------------------------------------|---------------------|
| Shortcut  | Function                              | Provider / Package  |
|-----------|---------------------------------------|---------------------|
| C-c Space | avy-goto-char				|	 Avy	|
| C-x SPC   | ace-jump-mode-pop-mark                |                     |
| C-x C-r   | Recent files                          |                     |
| C-c C-e   | Expand region                         |                     |
| M-j       | Mark next like this                   |                     |
| C-c M-j   | Mark all like this                    |                     |


Programming language specific shortcuts:

|----------|----------------------------------------------------------|----------------------|--------------------------|
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
|----------|----------------------------------------------------------|----------------------|--------------------------|

* Awesome Emacs Learning Resources
*** Reading content
    - Emacs RTD (http://emacs.readthedocs.io/en/latest/)
    - Endless Parenthesis (http://endlessparentheses.com/)
    - What the emacs.d? (http://whattheemacsd.com/)
    - Pragmatic emacs (http://pragmaticemacs.com)
    - Planet emacsen (http://planet.emacsen.org/)
*** Video Content:
    - Using Emacs (http://cestlaz.github.io/stories/emacs/)
    - Emacs Rocks (http://emacsrocks.com/)
*** Other
    - Awesome Emacs (https://github.com/emacs-tw/awesome-emacs)
