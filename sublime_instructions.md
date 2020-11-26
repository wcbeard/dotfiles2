

# Sublime keybindings

Go to `Sublime Text > Pref > Keybindings` (filename will be `Default (OSX).sublime-keymap`)

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
    { "keys": ["super+f"], "command": "show_panel", "args": {"panel": "replace"} }
]
```

## Sublack

-pkg install Sublack first
- install black into environment

Go to `Sublime Text > Pref > Package Settings > sublack > keybindings` (filename will be `sublack.sublime-settings`)

```json
{
    "black_command": "/Users/wbeard/miniconda3/envs/intv/bin/black",
}
```

## Mypy

- pkg install SublimeLinter
- pkg install SublimeLinter-contrib-mypy
- install mypy into env (aka `intv`)
- Cmd-, settings

Add

```json
"paths": {
        "osx": [
            "/Users/wbeard/miniconda3/envs/intv/bin/"
        ],
    },
```

Project level:
```json
{
    "settings":
    {
        "SublimeLinter.linters.mypy.env":
        {
            "MYPYPATH": "${project_path}/intv"
        },
        "SublimeLinter.linters.mypy.executable": "/Users/wbeard/miniconda3/envs/intv/bin/mypy",
        "SublimeLinter.linters.flake8.executable": "/Users/wbeard/miniconda3/envs/intv/bin/flake8",
    }
}
```

## Flake8
- pkg install SublimeLinter-flake8
- Add project-level settings above
