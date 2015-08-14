# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export ANDROID_HOME=/usr/local/opt/android-sdk

