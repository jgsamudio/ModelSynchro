# Repository Setup
install: 
	@echo "Installing ModelSynchro Library"
	@sh -l ./Install-Scripts/install-library.sh
	@echo "Installing ModelSynchro Executable"
	@sh -l ./Install-Scripts/install-exe.sh
	@echo "Installation Complete!"

select-xcode:
	@sudo xcode-select -s /Applications/Xcode.app/Contents/Developer

sync: update-library update-exe

update-exe:
	@echo "Updating ModelSynchro Executable"
	@cd ./ModelSynchro && swift package update

update-library:
	@echo "Updating ModelSynchro Library"
	@sh -l ./Install-Scripts/update-library.sh

release:
	@cd ./ModelSynchro && swift build -c release -Xswiftc -static-stdlib
