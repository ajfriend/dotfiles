.DEFAULT_GOAL := install

backup/.made:
	mkdir -p backup
	if [[ -f ~/.bashrc ]]; then mv ~/.bashrc backup/.bashrc; fi
	if [[ -f ~/.bash_profile ]]; then mv ~/.bash_profile backup/.bash_profile; fi
	if [[ -f ~/.bash_prompt ]]; then mv ~/.bash_prompt backup/.bash_prompt; fi
	if [[ -f ~/.gitconfig ]]; then mv ~/.bash_prompt backup/.gitconfig; fi
	if [[ -f ~/.gitignore ]]; then mv ~/.bash_prompt backup/.gitignore; fi
	touch backup/.made

.PHONY: install
install: backup/.made
	ln -fs ${CURDIR}/bashrc.sh ~/.bashrc
	ln -fs ${CURDIR}/bash_profile.sh ~/.bash_profile
	ln -fs ${CURDIR}/bash_prompt.sh ~/.bash_prompt
	ln -fs ${CURDIR}/gitconfig ~/.gitconfig
	ln -fs ${CURDIR}/gitignore ~/.gitignore


.PHONY: uninstall
uninstall:
	if [[ -h ~/.bashrc ]]; then rm ~/.bashrc; fi
	if [[ -h ~/.bash_profile ]]; then rm ~/.bash_profile; fi
	if [[ -h ~/.bash_prompt ]]; then rm ~/.bash_prompt; fi
	if [[ -h ~/.gitconfig ]]; then rm ~/.gitconfig; fi
	if [[ -h ~/.gitignore ]]; then rm ~/.gitignore; fi

.PHONY: restore
restore:
	if [[ -f backup/.bashrc ]]; then $(RM) ~/.bashrc; mv backup/.bashrc ~/.bashrc; fi
	if [[ -f backup/.bash_profile ]]; then $(RM) ~/.bash_profile; mv backup/.bash_profile ~/.bash_profile; fi
	if [[ -f backup/.bash_prompt ]]; then $(RM) ~/.bash_prompt; mv backup/.bash_prompt ~/.bash_prompt; fi
	if [[ -f backup/.gitconfig ]]; then $(RM) ~/.gitconfig; mv backup/.gitconfig ~/.gitconfig; fi
	if [[ -f backup/.gitignore ]]; then $(RM) ~/.gitignore; mv backup/.gitignore ~/.gitignore; fi
