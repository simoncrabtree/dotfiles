# dotfiles

Remap caps lock to ctrl:

Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout]
"Scancode Map"=hex:00,00,00,00,00,00,00,00,02,00,00,00,1d,00,3a,00,00,00,00,00


Set up links
ln -s dotfiles/.tmux.conf ~/.tmux.conf
