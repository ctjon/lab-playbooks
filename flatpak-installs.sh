sudo dnf install flatpak

sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak -y install https://flathub.org/repo/appstream/org.signal.Signal.flatpakref

flatpak -y install https://dl.flathub.org/repo/appstream/com.tdameritrade.ThinkOrSwim.flatpakref

flatpak -y install https://dl.flathub.org/repo/appstream/com.bluejeans.BlueJeans.flatpakref

flatpak -y install https://dl.flathub.org/repo/appstream/org.telegram.desktop.flatpakref
