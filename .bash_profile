
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;

export NVM_DIR=$HOME/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export GIT_EDITOR=vim
export EDITOR=vim

export GOROOT=$HOME/usr/go
export GOPATH=$HOME/work/go

# Add `~/bin` to the `$PATH`
export PATH=$HOME/bin:$HOME/usr/bin:$PATH;
export PATH=$PATH:${GOPATH}/bin:$GOROOT/bin
export PATH=$PATH:$HOME/usr/liteide/bin
export PATH=$PATH:$HOME/usr/depot_tools

export EXPERIMENTAL_USE_JAVA8=true
export ANDROID_SDK_ROOT=$HOME/usr/android/android-sdk-linux
export ANDROID_PLATFORM="$ANDROID_SDK_ROOT/platforms/android-23"
export ANDROID_NDK_ROOT=$HOME/usr/android/android-ndk
export ANDROID_NDK=$HOME/usr/android/android-ndk
export ANDROID_NDK_PLATFORM=android-23
export ANDROID_API_VERSION=android-23
export NDK=$HOME/usr/android/android-ndk

export PATH=$PATH:$HOME/usr/Arduino/hardware/espressif/esp32/tools/xtensa-esp32-elf/bin
export QT_DIR=/opt/Qt/


