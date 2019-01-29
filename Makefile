# Repository Setup
install: 
	@echo "Installing ModelSynchro Library"
	@sh -l ./Install-Scripts/install-library.sh
	@echo "Installing ModelSynchro Executable"
	@sh -l ./Install-Scripts/install-exe.sh
	@echo "Installation Complete!"
	@open ModelSynchro.xcodeproj

install-exe:
	@cd swift package generate-xcodeproj
	@open ModelSynchro.xcodeproj 

select-xcode:
	@sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
