# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/bin/flutter/bin
export PATH=$PATH:/usr/bin/flutter/bin/cache/dart-sdk/bin
export PATH=$PATH:/usr/bin/go/bin
export PATH=$PATH:/usr/bin/hyaena_technologies
export PATH=$PATH:/usr/bin/kotlin/bazel_build
export PATH=$PATH:/usr/bin/kotlin/gradle/bin
export PATH=$PATH:/usr/bin/kotlin/jbr/bin
export PATH=$PATH:/usr/bin/kotlin/kotlinc/bin
export PATH=$PATH:/usr/bin/kotlin/kotlin-native/bin
export PATH=$PATH:/usr/bin/kotlin/maven/bin
export PATH=$PATH:/usr/bin/swift/usr/bin

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc