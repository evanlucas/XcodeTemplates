all:
	@echo "Simple Xcode Templates"
	@echo ""
	@echo "Usage:"
	@echo "  make coda"
	@echo "  make simbl"
	@echo ""

coda:
	mkdir -p ~/Library/Developer/Xcode/Templates/Custom
	utils/geticns.sh
	cp -r CodaPlugin.xctemplate ~/Library/Developer/Xcode/Templates/Custom

simbl:
	mkdir -p ~/Library/Developer/Xcode/Templates/Custom
	cp -r SIMBLPlugin.xctemplate ~/Library/Developer/Xcode/Templates/Custom
