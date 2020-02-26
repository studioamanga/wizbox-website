all:
	haml -f html5 index.html.haml index.html
	sass style.scss:style.css
	cd ../../../Projects/iOS/WizBox/
	git pull
	cd ../../../Web/amg/wizbox/
	cp ../../../Projects/iOS/WizBox/releasenotes.html .
	open .
	open /Applications/Cyberduck.app
	
watch:
	sass --watch style.scss:style.css