# This only runs on user login


# If you're on a Mac and have been wondering why /usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin keeps getting prepended to PATH when you run tmux, it's because of a utility called path_helper that's run from your /etc/profile file.

# You can't easily persuade tmux (or rather, bash) not to source /etc/profile (for some reason tmux always runs as a login shell, which means /etc/profile will be read), but you can make sure that the effects of path_helper don't screw with your PATH.

# The trick is to make sure that PATH is empty before path_helper runs. In my ~/.bash_profile file I have this:
if [ -f /etc/profile ]; then
    PATH=""
    source /etc/profile
fi
# Clearing PATH before path_helper executes will prevent it from prepending the default PATH to your (previously) chosen PATH, and will allow the rest of your personal bash setup scripts (commands further down .bash_profile, or in .bashrc if you've sourced it from .bash_profile) to setup your PATH accordingly.


PATHORIG="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin"
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/opt/mysql55/bin:$(brew --prefix homebrew/php/php54)/bin:$PATH"

# This loads in the configuration in .bashrc
# Put all configuration there
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
