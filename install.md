# Install

* [Mozilla Bash script](https://raw.githubusercontent.com/mozilla/macOS-install-drive-with-wipe-disk0/master/build_macos_usb_wipe.sh)
* email in Gmail from Baraa

## Wipe and reinstall Mac OS

- Firefox => lastpass
- dropbox


```sh
cat brew_cask_list.txt | xargs brew cask install
cat brew_list.txt | xargs brew install
```

dependency: dropbox

* sync keyboard maestro
* download [pathfinder v8](https://cocoatech.com/#/support)
  * activate

* Set up bettersnaptool (app store)
  * start on login
* Google backup and sync [for individuals]

* iTerm
  * Settings > profile > keys 
  * set ⌥← => send escape sequence => b
  * same with f


## New ssh key for github

```sh
ssh-keygen -t rsa -b 4096 -C "wcbeard10@gmail.com"
pbcopy < ~/.ssh/id_rsa.pub
```
- add [here](https://github.com/settings/ssh/new)


# Installation

- Brew
  - run as super usr `su - SUPER`
  - sudo chown -R [user]:staff /usr/local/Caskroom
  - `brew install node`
- git

## Install dotfiles

- [ ] dotfiles with github

```sh
git clone git@github.com:wcbeard/dotfiles2.git
```


- [ohmyzsh](https://ohmyz.sh/#install)
  - this might fix permissions

```sh
sudo chmod -R g-w,o-w /usr/local/share/zsh
```

- Install autocompletion for zsh
  - `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

## Tig
Autocomplete issues [here](https://github.com/jonas/tig/issues/940)

Try
```sh
rm /usr/local/share/zsh/site-functions/_tig
rm /usr/local/share/zsh/site-functions/tig-completion.bash
```

- [ ] logitech [options](https://support.logi.com/hc/en-us/articles/360025297893)

# Sublime settings
* `ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl`

```json
[
    // { "keys": ["super+f"], "command": "show_panel", "args": {"panel": "replace", "reverse": false} },
    { "keys": ["j", "j"], "command": "exit_insert_mode",
        "context":
        [
            { "key": "setting.command_mode", "operand": false },
            { "key": "setting.is_widget", "operand": false }
        ]
    },
    {
        "keys": [
            "super+alt+f"
        ],
        "command": "black_file"
    },
    // { "keys": ["super+shift+g"], "command": "find_next" },
    // { "keys": ["super+g"], "command": "find_prev" },
    { "keys": ["super+f"], "command": "show_panel", "args": {"panel": "replace", "reverse": false} }
]
```

## Flake8 linting

```json
// SublimeLinter Settings - User
{
    "linters": {
        "flake8": {
            "executable": [ "/Users/wbeard/miniconda3/envs/intv/bin/flake8" ]
        }
    }
}
```

# Extras
- [ ] [Use ⌥ ← and ⌥→ to jump forwards / backwards words in iTerm 2, on OS X](https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x)
  - [ ] iterm: basically 'send + escape + b/f'


# Compilers
- brew install 
- apple Command line tools
- brew install libomp
  - openMP for stuff like lightgbm
  - "Reason: image not found"
  - 