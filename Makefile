# SPDX-License: GPL-2

VERSION := 1.1.3
PACKAGE := Z180-Assembly-Syntax-$(VERSION).sublime-package
FOLDER  := Z180-Assembly-Syntax-$(VERSION)

# *****************************************
# *** Rule for generate release package ***
# *****************************************

release:
	mkdir -p $(FOLDER)
	cp LICENSE $(FOLDER)
	cp README.md $(FOLDER)
	cp *.sublime-syntax $(FOLDER)
	zip -r $(PACKAGE) $(FOLDER)
	rm -rf $(FOLDER)

git-bugs:
	git add .
	git commit -m "Bugs fix"
	git push origin main

git-version:
	git add .
	git commit -m "Update version"
	git push origin main

clean:
	rm -f $(PACKAGE)