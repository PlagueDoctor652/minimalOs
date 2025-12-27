from libqtile import bar, widget
from libqtile.config import Screen

screens = [
    Screen(
        top=bar.Bar(
            [],
            24,
            opacity=0.8
        )
    )
]
