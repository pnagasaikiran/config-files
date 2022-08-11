# config
All the config here is basically for linuxmint since I use that distro and install i3wm along with muffin.
Just copy paste all the text in the .vimrc file into your .vimrc file in the home directory. All the other things regarding binds and stuff are explained in comments in the file itself. Also make a driectory ~/.vim/colors/ and put the zeltron.vim file in that directory. zeltron.vim file is for setting the colorscheme and all the stuff related to it are explained in the comments in the file itself.

For neovim, just put the init.vim in ~/.config/nvim/. Also put the colorscheme zeltron.vim in ~/.config/nvim/colors/.

Also here is my PS1 variable for bash prompt if you want to try it out:-

```bash
export PS1="\n\[\e[36m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[34m\]@\[\e[m\]\[\e[31m\]\h\[\e[m\]\[\e[36m\]]\[\e[m\]\[\e[34m\]:\[\e[m\]\[\e[36m\][\[\e[m\]\[\e[31m\]\w\[\e[m\]\[\e[36m\]]\[\e[m\]\[\e[34m\]\n:\[\e[m\]\[\e[36m\][\[\e[m\]\[\e[33m\]\\$\[\e[m\]\[\e[36m\]]\[\e[m\]\[\e[34m\]-\[\e[m\]\[\e[31m\]>\[\e[m\] "
```

Add this line at the end of your .bashrc file and enjoy the new prompt.

Also some of the aliases and bash functions which I use:-
```bash
alias coding_directory='cd /media/xeltron/zeltron/Coding'
alias coding_directory='cd /media/xeltron/zeltron/Coding'
alias burp_suite='cd ~/Software/Burp/Burp\ Suite\ Professional\ Edition\ v2020.12.1;java -noverify -javaagent:Dr.FarFar.jar -jar burpsuite_pro_v2020.12.1.jar'
alias jflap='cd ~/Software;java -jar JFLAP7.1.jar'

vman() {
	man "${1}" | vim -RM -;
}

c() {
	filenamewithoutextension=$(echo "${1}" | cut -f 1 -d '.');
	gcc ${1} -o ${filenamewithoutextension};
	chmod +x ${filenamewithoutextension};
}
set -o vi
```

Commands for mounting:-
```bash
if ! cat /proc/mounts | grep -q /dev/sda5
then
	gio mount -d /dev/sda5
fi
if ! cat /proc/mounts | grep -q /dev/sda2
then
	gio mount -d /dev/sda2
fi
```
Command for creating desktop:-
```bash
xdotool set_num_desktops 9
```
