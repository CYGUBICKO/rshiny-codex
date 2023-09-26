## Build rshiny for codeless ML

## https://github.com/CYGUBICKO/rshiny-codex

current: target
-include target.mk

vim_session:
	bash -cl "vmt"


######################################################################

Sources += $(wildcard *.Rmd *.md *.R)
Sources += README.md

######################################################################

autopipeR = defined

######################################################################



######################################################################

### Makestuff

Sources += Makefile

## Sources += content.mk
## include content.mk

Ignore += makestuff
msrepo = https://github.com/dushoff

Makefile: makestuff/Makefile
makestuff/Makefile:
	git clone $(msrepo)/makestuff
	ls makestuff/Makefile

-include makestuff/os.mk

-include makestuff/chains.mk
-include makestuff/texi.mk
-include makestuff/pipeR.mk

-include makestuff/git.mk
-include makestuff/visual.mk
