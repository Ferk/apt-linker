
Since the day that Ubuntu Gutsy was released it has been including a useful tool that allows package installing directly from the browser by means of "apt://" links: [apturl](https://help.ubuntu.com/community/AptURL)

However, the usage of this tool is not very extended in the web. But this small script might help you on that.

The script is intended to ease the life of GNU/Linux users in Ubuntu (or Debian) who browse the Internet searching for software, tutorials, etc. and find apt-get/aptitude lines all around.

What this script does is to turn lines of text like this:


> sudo apt-get install emacs emacs-goodies-el windows-el jde js2-mode
> aptitude install freepats timidity-interfaces-extra timidity-el tuxguitar
> apt://oneko
> apt:bsdgames,pacman4console,moon-buggy-esd



into clickable links that will launch a graphical installer for each of the packages in the line.
Like this:


> [sudo apt-get install emacs emacs-goodies-el windows-el jde js2-mode](apt:emacs-goodies-el,windows-el,jde,js2-mode)
> [aptitude install freepats timidity-interfaces-extra timidity-el tuxguitar](apt:freepats,timidity-interfaces-extra,timidity-el,tuxguitar)
> [apt://oneko](apt://oneko)
> [apt:bsdgames,pacman4console,moon-buggy-esd](apt:bsdgames,pacman4console,moon-buggy-esd)



If these links don't work for you then it means that you are not using Ubuntu or that you have a Debian derivative that doesn't have the apturl package installed. You can try to install it doing this:


    sudo apt-get install apturl
    # (this might be the last time you'll have to copy that on a terminal)




