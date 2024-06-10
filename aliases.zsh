# alias adb='~/Documents/Scripts/adb_wrapper.sh'
TAIV_PATH="~/Documents/Taiv/Code/TaiV"

# Taiv
alias taivtv="cd ${TAIV_PATH}/TaiV_TV_Client"
alias taivweb="cd ${TAIV_PATH}/TaiV_Web_App"
alias taivads="cd ${TAIV_PATH}/TaiV_Ad_Manager"
alias taivwc="cd ${TAIV_PATH}/Taiv_Web_Common"
alias taivserver="cd ${TAIV_PATH}/TaiV_Server/functions"
alias taivservices="cd ${TAIV_PATH}/TaiV_Android_Services"
alias taiv="cd ${TAIV_PATH}/"
alias taivscripts="cd ~/Documents/Taiv/Code/TaiV_Scripts"
alias startwebhard="cd ${TAIV_PATH}/TaiV_Web_App && npm i && cd prebuild_scripts && python UpdateFonts.py && cd .. && npm run start"
alias startweb="cd ${TAIV_PATH}/TaiV_Web_App && npm start"
alias taivdashboard="cd ${TAIV_PATH}/taiv_utilities_dashboard"
alias buildtvprod="cd ${TAIV_PATH}/TaiV_TV_Client/android; ./gradlew clean; ENVFILE=../.env.prod ./gradlew assembleProdRelease; open ${TAIV_PATH}/TaiV_TV_Client/android/app/build/outputs/apk/prodRelease"
alias buildtvdev="nvm use 15.2.1 && cd ${TAIV_PATH}/TaiV_TV_Client/android; ./gradlew clean; ENVFILE=../.env ./gradlew assembleRelease; open ${TAIV_PATH}/TaiV_TV_Client/android/app/build/outputs/apk"


# Android Dev
alias rootshell='adb root && adb remount && adb shell'
alias ac="adb connect"
alias adc="adb disconnect"
alias ad="adb devices"
alias it="adb shell input text"
alias lc="adb logcat -v color skia:S SystemControl:S audio_hw_subMixingFactory:S USBSensor:S"
alias serialno='. ~/Documents/Scripts/get_serialno.sh'
alias as='open -a "Android Studio.app"'
alias slideshow='adb shell "if ! test -d /sys/class/gpio/gpio431; then echo "431" > /sys/class/gpio/export; chmod 777 /sys/class/gpio/gpio431/direction; chmod 777 /sys/class/gpio/gpio431/value; echo "out" > /sys/class/gpio/gpio431/direction; fi; echo 1 > /sys/class/gpio/gpio431/value;"'
alias passthrough='adb shell "echo 0 > /sys/class/gpio/gpio431/value"'

# React Native
alias rnstart='npx react-native start'
alias debugrn='adb shell input keyevent 82'
alias fixrn="adb reverse tcp:8081 tcp:8081 && sleep 3 && adb shell am start -n com.android.launcher3/.Launcher && adb shell am start -n com.taiv.dev_tvApp/com.taiv_tv_client.SplashActivity"
alias fixrk="adb reverse tcp:8081 tcp:8081 && sleep 3 && adb shell am start -n com.android.launcher3/com.android.launcher3.uioverrides.QuickstepLauncher && adb shell am start -n com.taiv.dev_tvApp/com.taiv_tv_client.SplashActivity"
alias reactotron="open -a Reactotron && adb reverse tcp:9090 tcp:9090"
alias react-devtools="npx react-devtools && adb reverse tcp:8097 tcp:8097";

# Jest
alias test="find __tests__ -type f | fzf | xargs npm test"

# Firebase
alias localfb="firebase emulators:start"

# Git
alias gitnotmerged="diff <(git branch -a --merged master) <(git branch -a --merged staging)" 
alias checkout="git branch -a | fzf | xargs git checkout"

# Python
alias p3='python3'

# Node
alias repl="NODE_PATH=$(npm root -g) node"

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
alias sourcezsh="exec zsh"
alias editaliases="vim ~/dotfiles/aliases.zsh"
alias dotfiles="cd ~/dotfiles"
alias cb="clipboard"

# Scripts
alias h='. ~/Documents/Scripts/history.sh'
alias sc='~/Documents/Scripts/adb_screenshot.sh'
alias mdpdf='~/Documents/Scripts/md_to_pdf.sh'
alias note='~/Documents/Scripts/new_note.sh'
alias notebook='~/Documents/Scripts/notebook.sh'

alias workspace='~/Documents/Workspace'
