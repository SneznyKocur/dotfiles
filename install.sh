#! /usr/bin/bash
function install()  {
	sudo pacman -Syu
	sudo pacman -S bspwm sxhkd neofetch neovim polybar picom dunst
	cp -r ./configs ~/.config/
	nvim +PackerSync
	echo "done (?) please reboot."
}

echo "This file is only available on arch systems"
echo "Are you sure you are running arch?"
select yn in "Yes" "No"; do
    case $yn in
	Yes ) install(); break;;
        No ) exit;;
    esac
done

