# SPDX-License-Identifier: MIT

name := rst-jp
vsix := $(name).vsix

input := $(wildcard syntaxes/*.tmLanguage.json)

.PHONY: install uninstall

$(vsix):

out/extension.js:
	tsc -p ./

$(vsix): package.json $(input) out/extension.js
	vsce package --no-dependencies -o $@

install: $(vsix)
	code --install-extension $<

uninstall:
	code --uninstall-extension \
	     $$(code --list-extensions | grep $(name) || printf '39\n')
