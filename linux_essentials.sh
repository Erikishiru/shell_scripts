declare -A osInfo;
osInfo[/etc/redhat-release]=yum
osInfo[/etc/arch-release]=pacman
osInfo[/etc/gentoo-release]=emerge
osInfo[/etc/SuSE-release]=zypp
osInfo[/etc/debian_version]=apt-get

for f in ${!osInfo[@]}
do
    if [[ -f $f ]];then
        echo Package manager: ${osInfo[$f]}
    fi
done

case ${osInfo[$f]} in
   pacman)
      Statement(s) to be executed if pattern2 matches
      ;;
   apt-get)

<<TODO
        Eddy: Manage & install .deb packages
        Gdebi: Lightweight package installer for .deb packages
        Meow: Gnome Folder Management
        Google Chrome
        Avro (Install with Gdebi/Eddy) & Bangla Fonts
        Gnome Tweak Tool
        Discord: VOIP and Chat
        VLC: media player for videos
        Deluge: Torrent Client
        Mailspring: Mail Client
        PeaZip: WinRAR WinZip alternative
        GPaste: Clipboard Manager
        uGet: Download Manager or, XDM
        Chrome Extension: 
        https://chrome.google.com/webstore/detail/uget-integration/efjgjleilhflffpbnkaofpmdnajdpepi

        Firefox Extension: 
        https://addons.mozilla.org/en-US/firefox/addon/ugetintegration/  
        Shutter: Screenshot tool or, Lightscreen

        Flameshot: Screenshot tool

        TimeShift: Backup tool

        Redshift: Night Light or, f.lux

        Albert: Search Tool

        Stacer: System Cleaner

        sudo add-apt-repository ppa:oguzhaninan/stacer
        sudo apt-get update
        sudo apt-get install stacer
        Firewall

        GIMP: Photoshop alternative for Linux

        Pinta: Paint alternative in Linux

        Calibre: eBook management tool

        Kazam: Screen recorder tool sudo apt-get install gdebi

        Spotify: For streaming music

        Skype: For video messaging

        Kdenlive: Video editor for Linux

        VSCode: Code editor

        Steam

        WINE

        Lutris

        PlayonLinux

        OBS - Studio
        sudo add-apt-repository ppa:obsproject/obs-studio  
        sudo apt-get update 
        sudo apt-get install obs-studio
TODO
      ;;
   *)
     echo "Support for your distro is not available yet."
     ;;
esac