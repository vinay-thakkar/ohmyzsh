#-------------------
# Personnal Aliases
#-------------------

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'

alias h='history -i'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

alias du='du -kh'           # Makes a more readable output.
alias ls='ls -h -G'         #  Colorise
#alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'          #  Sort by size, biggest last.
alias lt='ls -ltr'          #  Sort by date, most recent last.
alias lc='ls -ltcr'         #  Sort by/show change time,most recent last.
alias lu='ls -ltur'         #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lv"
alias lm='ll |more'         #  Pipe through 'more'
alias lr='ll -R'            #  Recursive ls.
alias la='ll -A'            #  Show hidden files.
alias tree='tree -Csuh'     #  Nice alternative to 'recursive ls' ...

alias c='clear'
alias e='exit'

alias wifi="networksetup -setairportpower en0"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias airport='sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias dockervm="echo 'ctrl+a + ctrl+\ to exit' && sleep 2 && screen ~/Library/Containers/com.docker.docker/Data/vms/0/tty"
#source /usr/local/Cellar/awscli/1.8.9/bin/aws_zsh_completer.sh

#create url.webloc file - should be called with URL
alias webloc="~/Work/misc/template_webloc.sh"

alias wrapon="tput smam"
alias wrapoff="tput rmam"

alias listening_ports="lsof -PiTCP -sTCP:LISTEN"

alias oracle_java="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_231.jdk/Contents/Home"

function whats_on_port() {
	if (( $# == 0 ))
  	then
  		lsof -n -i  | grep LISTEN
  	else
  		lsof -n -i:$1  | grep LISTEN
  	fi
}

function pid_on_port() {
	if (( $# == 0 ))
  	then
  		lsof -n -i  | grep LISTEN
  	else
		  lsof -i :$1 | awk '{ print $2; }' | head -n 2 | grep -v PID
	fi
}

function pid_cmd() {
	if (( $# == 0 ))
  	then
  		echo 'no pid given'
  	else
		ps -p $1 -o comm=
	fi
}

function free() {
  vm_stat | perl -ne '/page size of (\d+)/ and $size=$1; /Pages\s+([^:]+)[^\d]+(\d+)/ and printf("%-25s % 16.2f Mi\n", "$1:", $2 * $size / 1048576);'
}

# alias dvostart='dvo;nohup ./bin/standalone.sh >>./nohup.out 2>&1 &'
# alias dvolog='dvo;tail -f -n1000 ./standalone/log/server.log'
# alias dvoclear='dvo;rm -rf ./standalone/log/* ./standalone/tmp/* ./nohup.out'
# alias dvostop="dvo;lsof nohup.out | grep java | awk '{ print \$2 }' | uniq | xargs kill -9"
# alias dvostat="dvo;lsof nohup.out | grep java | awk '{ print \$2 }' | uniq"

# alias dvnstart='dvn;nohup ./bin/standalone.sh >>./nohup.out 2>&1 &'
# alias dvnlog='dvn;tail -f -n1000 ./standalone/log/server.log'
# alias dvnclear='dvn;rm -rf ./standalone/log/* ./standalone/tmp/* ./nohup.out'
# alias dvnstop="dvn;lsof nohup.out | grep java | awk '{ print \$2 }' | uniq | xargs kill -9"
# alias dvnstat="dvn;lsof nohup.out | grep java | awk '{ print \$2 }' | uniq"

# alias setjbosshome="export JBOSS_HOME=`pwd`"
# alias devold=$HOME/Work/code/bradesco/nextbank-dev
# alias intold=$HOME/Work/code/bradesco/nextbank-sprint-integration
# alias uk1old=$HOME/Work/code/bradesco/nextbank-uk1
# alias dev=$HOME/Work/code/bradesco/nextbank-dev
# alias int=$HOME/Work/code/bradesco/bradesco-sprint-integration
# alias uk1=$HOME/Work/code/bradesco/bradesco-uk1
# alias r1=$HOME/Work/code/bradesco/nextbank-r1
# alias bradesco=$HOME/Work/code/bradesco
# alias rbs=$HOME/Work/code/living/rbs
# alias digitalfactory=$HOME/Work/code/living/digitalfactory
# alias crowd=$HOME/Work/code/ilabs/ce
# alias public=$HOME/Work/code/public
# alias ilabs=$HOME/Work/code/ilabs
# alias vins=$HOME/Work/code/vins
# alias training=$HOME/Work/code/training
# alias dvo=$HOME/Work/apps/jboss/jbossdv-6.0.0/jboss-eap-6.1
# alias dvn=$HOME/Work/apps/jboss/jbossdv-6.0.0/jboss-eap-6.1-digital
# alias dv2=$HOME/Work/apps/jboss/jbossdv-6.2.0/EAP-6.4.0
# alias eap=$HOME/Work/apps/EAP-6.4.0
# alias jdg=$HOME/Work/apps/jboss/jboss-datagrid-6.5.1-server
# alias apps=$HOME/Work/apps
# alias work=$HOME/Work
# alias code=$HOME/Work/code
# alias wildfly=/usr/local/Cellar/wildfly-as/10.0.0.Final/libexec
# alias action=$HOME/Work/code/vins/springboot_in_action
# function setjbosshome {
# 	if (( $# == 0 ))
# 	then
# 		export JBOSS_HOME=`pwd` 
# 	else
# 		export JBOSS_HOME=$1
# 	fi
# 	echo export JBOSS_HOME=$JBOSS_HOME
# }
 
