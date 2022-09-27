all:
	haml -f html5 index.html.haml index.html
	sass style.scss:style.css
	git -C ~/Developer/WizBox/ pull
	cp ~/Developer/WizBox/releasenotes.html .
	cp ~/Developer/WizBox/releasenotes.json .
	open .
	open /Applications/Cyberduck.app
	
watch:
	sass --watch style.scss:style.css