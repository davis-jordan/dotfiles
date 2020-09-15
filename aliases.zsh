# Taiv
alias taivtv='cd ~/Documents/Taiv/Code/TaiV/TaiV_TV_Client'
alias taivweb='cd ~/Documents/Taiv/Code/TaiV/TaiV_Web_App'
alias taivserver='cd ~/Documents/Taiv/Code/TaiV/TaiV_Server'
alias taivservices='cd ~/Documents/Taiv/Code/TaiV/TaiV_Android_Services'
alias taiv='cd ~/Documents/Taiv/Code/TaiV/'
alias taivscripts='cd ~/Documents/Taiv/Code/TaiV_Scripts'
alias startweb='cd ~/Documents/Taiv/Code/TaiV/TaiV_Web_App && npm i && cd prebuild_scripts && python UpdateFonts.py && cd .. && npm run start'
alias taivdashboard='cd ~/Documents/Taiv/Code/TaiV/taiv_utilities_dashboard'

# Android Dev
alias rootshell='adb root && adb remount && adb shell'
alias ac="adb connect"
alias adc="adb disconnect"
alias ad="adb devices"
alias it="adb shell input text"
alias lc="adb logcat -v color skia:S"
alias serialno='. ~/Documents/Scripts/get_serialno.sh'
# React Native
alias rnstart='react-native start'
alias debugrn='adb shell input keyevent 82'
alias fixrn="adb reverse tcp:8081 tcp:8081 && sleep 3 && adb shell am start -n com.android.launcher3/.Launcher && adb shell am start -n com.taiv.dev_tvApp/com.taiv_tv_client.SplashActivity"
alias reactotron="open -a Reactotron && adb reverse tcp:9090 tcp:9090"

# Firebase
alias localfb="firebase emulators:start"

# Git
alias gitnotmerged="diff <(git branch -a --merged master) <(git branch -a --merged staging)" 

# Python
alias p3='python3'

# Navigation Shortcuts
alias scripts="cd ~/Documents/Scripts"

# Utility Shortcuts
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias r="ranger"
alias lg="lazygit"
alias nf="neofetch"

# Useful
alias vim="nvim"
alias zshrc="vim ~/dotfiles/zshrc"
alias vimrc="vim ~/dotfiles/vimrc"
alias sourcezsh=". ~/.zshrc"
alias editaliases="vim ~/.oh-my-zsh/custom/aliases.zsh"
alias dotfiles="cd ~/dotfiles"

# Scripts
alias h='. ~/Documents/Scripts/history.sh'
alias sc='~/Documents/Scripts/adb_screenshot.sh'
alias mdpdf='~/Documents/Scripts/md_to_pdf.sh'
