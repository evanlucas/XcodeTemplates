all:
	make xcode

xcode:
	mkdir -p ~/Library/Developer/Xcode/Templates/Custom
	utils/geticns.sh
	cp -r CodaPlugin.xctemplate ~/Library/Developer/Xcode/Templates/Custom
