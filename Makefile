all: html pdf
html: marcus.1
	groff -mandoc -T html marcus.1 > resume.html
	sed -i '/<style type\="text\/css">/a body { max-width: 650px }' resume.html

pdf: marcus.1
	mandoc -T pdf marcus.1 > resume.pdf || (groff -mandoc -T ps marcus.1 | pstopdf -i -o resume.pdf)

clean:
	rm -f resume.html
	rm -f resume.pdf
