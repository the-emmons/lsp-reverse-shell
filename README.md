# LSP Reverse Shell
A Lua Server Pages reverse webshell for Windows. I noticed there was no '.lsp' webshell of any sort available online, so now there is.

Since the Lua sockets module (the traditional Lua reverse shell method) often isn't installed, this webshell opts instead to execute a reverse shell in-memory off of an SMB share. Be sure to install impacket, if it isn't already installed.
### Usage:
* ```git clone https://github.com/the-emmon/lsp-reverse-shell```
* ```cd lsp-reverse-shell```
* Change the IP address in 'rev.lsp' to your machine.
* ``` sudo smbserver.py SMB . -comment share -ts -debug -smb2support -username user -password 'pass' ```
* Start a nc listener in another window.
* Upload the 'rev.lsp' file, open the page, and you should immediately catch a shell.
