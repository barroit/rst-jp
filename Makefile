# SPDX-License-Identifier: MIT

.PHONY: bundle

bundle:
	npx @vscode/vsce package --no-dependencies -o rst-jp.vsix
