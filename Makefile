# SPDX-License-Identifier: MIT

.PHONY: bundle install uninstall

bundle:
	npx @vscode/vsce package --no-dependencies -o rst-jp.vsix

install:
	code --install-extension rst-jp.vsix

uninstall:
	code --uninstall-extension \
	     $$(code --list-extensions | \
	        grep restructuredtext-jp || printf '39\n')
