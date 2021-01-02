# dotfiles

ROOT_DIR	= $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
DOT_FILES	= $(wildcard home/.??*)
	
init:
	for i in $(DOT_FILES); do \
		ln -sfnv $(ROOT_DIR)$$i ~$(basename .$$i); \
	done

install_fonts:
	curl -L https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -o ~/Library/Fonts/MesloLGS\ NF\ Regular.ttf
	curl -L https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -o ~/Library/Fonts/MesloLGS\ NF\ Bold.ttf
	curl -L https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -o ~/Library/Fonts/MesloLGS\ NF\ Italic.ttf
	curl -L https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -o ~/Library/Fonts/MesloLGS\ NF\ Bold\ Italic.ttf