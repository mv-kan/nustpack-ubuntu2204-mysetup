
# if we have firefox running we have to kill it, because we removing firefox
kill $(shell pidof firefox) || true
sudo snap remove --purge firefox
sudo snap remove --purge snap-store
sudo snap remove --purge gnome-3-38-2004
sudo snap remove --purge gtk-common-themes
sudo snap remove --purge snapd-desktop-integration
sudo snap remove --purge bare
sudo snap remove --purge core20
sudo snap remove --purge snapd
	
sudo apt remove --autoremove -y snapd
	
sudo touch /etc/apt/preferences.d/nosnap.pref		
sudo chmod 666 /etc/apt/preferences.d/nosnap.pref 
sudo echo -e "Package: snapd \nPin: release a=* \nPin-Priority: -10" > /etc/apt/preferences.d/nosnap.pref
