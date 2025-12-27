from typing import List
from libqtile import layout, hook
from libqtile.config import Key, Group, Screen, Drag, Click
from libqtile.command import lazy
from libqtile import bar, widget
import keys, groups, layouts, screens, widgets

# Импорт основных настроек из отдельных файлов
mod = "mod4"  # Super / Windows key
terminal = "alacritty"

keys = keys.keys
groups = groups.groups
layouts = layouts.layouts
screens = screens.screens
widget_defaults = widgets.widget_defaults
extension_defaults = widgets.extension_defaults

# Автостарт
@hook.subscribe.startup_once
def autostart():
    import subprocess
    subprocess.call(["~/.config/qtile/autostart.sh"])
