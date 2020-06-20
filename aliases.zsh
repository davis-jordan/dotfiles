# Taiv
alias taivtv='cd ~/Documents/Taiv/Code/TaiV/TaiV_TV_Client'
alias taivweb='cd ~/Documents/Taiv/Code/TaiV/TaiV_Web_App'
alias taivserver='cd ~/Documents/Taiv/Code/TaiV/TaiV_Server'
alias taiv='cd ~/Documents/Taiv/Code/TaiV/'
alias taivscripts='cd ~/Documents/Taiv/Code/TaiV_Scripts'
alias startweb='cd ~/Documents/Taiv/Code/TaiV/TaiV_Web_App && npm i && cd prebuild_scripts && python UpdateFonts.py && cd .. && npm run start'

# Android Dev
alias rootshell='adb root && adb remount && adb shell'
alias ac="adb connect"
alias adc="adb disconnect"
alias ad="adb devices"
alias it="adb shell input text"
alias lc="adb logcat -v color"

# React Native
alias rnstart='react-native start'
alias debugrn='adb shell input keyevent 82'
alias fixrn="adb reverse tcp:8081 tcp:8081"
alias reactotron="open -a Reactotron && adb reverse tcp:9090 tcp:9090"

# Useful
alias zshrc="vim ~/dotfiles/zshrc"
alias sourcezsh=". ~/.zshrc"
alias editaliases="vim ~/.oh-my-zsh/custom/aliases.zsh"
