all: html pdf
html: marcus.1
	groff -mandoc -T html marcus.1 > resume.html
	sed -i '/<style type\="text\/css">/a body { max-width: 650px }' resume.html

pdf: marcus.1
	groff -mandoc -T html marcus.1 > resume.pdf

clean:
	rm resume.html
	rm resume.pdf
