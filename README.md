### Xcode Templates

#### Coda 2 Template
This template allows you to create a Cocoa bundle for a Coda 2 Plugin.
It uses all the specifications from Panic's website and even includes the Principal Class files with a few example methods.

##### Installation
- Clone this repository
- Run `make`

##### What actually happens
The Makefile is just included to make it easier on development.  In order to not violate any copyrights from Panic, make copies the icon file from this Coda 2 application and then downloads the development archive and extracts the header file required for their plugins.
It then creates ~/Library/Developer/Xcode/Templates/Custom and copies the plugin template to that folder.

Now, Xcode will show the Plugin template under `Custom` whenever you attempt to create a new project.

