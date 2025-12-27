#!/usr/bin/env bash
set -e

echo "==> Установка минималистичного Qtile rice (Arch Linux)"

# Проверка Arch
if ! command -v pacman &>/dev/null; then
  echo "Это не Arch Linux. Выход."
  exit 1
fi

echo "==> Установка пакетов из repo"
sudo pacman -S --needed --noconfirm \
  qtile \
  rofi \
  picom \
  alacritty \
  lxappearance \
  plymouth \
  python-psutil \
  python-iwlib \
  python-pyxdg \
  noto-fonts \
  noto-fonts-emoji

echo "==> Создание директорий конфигов"
mkdir -p ~/.config/{qtile,rofi/scripts,picom,lxappearance,plymouth/themes}

echo "==> Копирование конфигов"
cp -r ./config/qtile/* ~/.config/qtile/
cp -r ./config/rofi/* ~/.config/rofi/
cp -r ./config/picom/* ~/.config/picom/
cp -r ./config/lxappearance/* ~/.config/lxappearance/
cp -r ./config/plymouth ~/.config/

echo "==> Права на исполняемые файлы"
chmod +x \
  ~/.config/qtile/autostart.sh \
  ~/.config/rofi/scripts/launch.sh \
  ~/.config/plymouth/set_theme.sh

echo "==> Установка Plymouth темы"
sudo cp -r ~/.config/plymouth/themes/zune /usr/share/plymouth/themes/
sudo plymouth-set-default-theme -R zune

echo "==> Готово"
echo "Перезайди в сессию и выбери Qtile"
