# Changelog

## [2.0.0] - 2025-02-25

### Added

- **custompkgs**: Legacy Nvidia driver packages (`nvidia-dkms-580.95.05` and `nvidia-utils-580.95.05`) for GPUs no longer supported by the official `nvidia-open-dkms` packages (e.g. GTX 1080)
- **fonts**: JetBrains Mono NerdFont Mono font family (7 variants: Regular, Bold, ExtraBold, SemiBold, Medium, Light, Italic)
- **configs**: `.gitconfig` - Git configuration with GPG signing, commit template, SSH URL rewriting
- **configs**: `.xinitrc` - X session startup script for XFCE4
- **configs/.zshrc**: VPN management aliases (`vpn_add`, `vpn_del`, `vpn_on`, `vpn_off`, `vpn_show`, `vpn_show_active`) via NetworkManager/WireGuard
- **configs/.zshrc**: Golang aliases (`gr`, `gb`, `gbp`, `gmi`)
- **configs/.zshrc**: Additional utility aliases (`mk`, `z`, `zconf`, `testcommit`)
- **configs/grub**: New GRUB theme `arch-silence-grub-theme-git`
- **configs/mkinitcpio.conf**: `btrfs` module added to `MODULES` array
- **templates**: `.editorconfig` - added Makefile-specific tab indentation rule
- **.editorconfig**: Project-level EditorConfig configuration
- **CI**: GitHub Actions release workflow, `FUNDING.yml`

### Changed

- **configs/.zshrc**: ZSH theme changed from `jonathan` to `agnoster`
- **configs/.zshrc**: Default visual editor changed from `nano`/`vim` to `zeditor --wait`
- **configs/.zshrc**: Plugins list reduced to `(sudo)`, removed `golang` and `themes`
- **configs/.zshrc**: Renamed and reorganized aliases - `pms` → `pmi` (install), `pmr` → `pmu` (uninstall), `pm_check_orphans` → `orphans_check`, `pm_clear_cache` → `clear_cache`
- **configs/.zshrc**: `npm install/uninstall -g` aliases now use `sudo`
- **configs/.zshrc**: `gp` and `gcp` aliases now also push tags (`git push --tags`)
- **configs/.zshrc**: Simplified function autoloading with `autoload -Uz $HOME/.zfunc/*(:t)`
- **configs/grub**: `GRUB_CMDLINE_LINUX_DEFAULT` simplified to `loglevel=3`, previous aggressive kernel parameters commented out
- **configs/grub**: `GRUB_GFXMODE` changed from `1024x768` to `1920x1080`
- **configs/99-custom.conf**: Removed `vm.dirty_ratio` and `vm.dirty_background_ratio` - system defaults are optimal
- **templates/.dockerignore**: Reorganized exclusions, added Docker/Git/docs-related patterns
- **templates/.gitignore**: Added patterns for `bin/`, `tmp.*`, `todo`, `testfile*`, `notes.md`, `QWEN.md`, `AGENTS.md`; removed duplicate `*.avi` entry
- **templates/git-commit-template_en.txt**: Renamed to `git-commit-template.txt`

### Removed

- **configs**: `.htaccess` - Apache is no longer used
- **configs**: `.npmrc` - unnecessary configuration
- **configs**: `git.plugin.zsh` - custom Oh-My-ZSH Git plugin no longer maintained
- **configs**: `web-search.plugin.zsh` - custom Oh-My-ZSH web search plugin no longer maintained
- **configs/.zshrc**: All `yay` package manager aliases
- **configs/.zshrc**: `netTest`, `ir`, `ir_stop`, `backup_ide` aliases
- **configs/.zshrc**: `nvm` initialization (`source /usr/share/nvm/init-nvm.sh`)
- **.zfunc**: `fn_new_libreoffice_doc` function and its template - LibreOffice is no longer used
- **.zfunc**: `fn_youtube_video_translate` function - removed from the library
- **templates**: `git-commit-template_ru.txt` - consolidated into a single English template
- **templates**: `libreoffice.ott` - LibreOffice document template removed

[2.0.0]: https://github.com/andmitr/ArchLinux-utility-belt/releases/tag/v2.0.0
