from libqtile.config import Key
from libqtile.command import lazy

mod = "mod4"
terminal = "alacritty"

keys = [
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([mod], "d", lazy.spawn("~/.config/rofi/scripts/launch.sh"), desc="Launch Rofi menu"),
    Key([mod, "shift"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod, "shift"], "r", lazy.restart(), desc="Restart Qtile"),
]
