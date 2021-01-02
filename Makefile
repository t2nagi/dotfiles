# dotfiles

ROOT_DIR	= $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
DOT_FILES	= $(wildcard $(ROOT_DIR)home/.??*)
	
init:
	for i in $(DOT_FILES); do \
		echo source $$i >> $$HOME/`basename $$i`; \
	done

install_fonts:
	curl -L https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -o ~/Library/Fonts/MesloLGS\ NF\ Regular.ttf
	curl -L https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -o ~/Library/Fonts/MesloLGS\ NF\ Bold.ttf
	curl -L https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -o ~/Library/Fonts/MesloLGS\ NF\ Italic.ttf
	curl -L https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -o ~/Library/Fonts/MesloLGS\ NF\ Bold\ Italic.ttf

install_sdkman:
	curl -s "https://get.sdkman.io" | bash