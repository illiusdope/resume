all: pdf

html:
	@cat header.html > resume.html
	@comrak --unsafe resume.md >> resume.html
	@cat footer.html >> resume.html

pdf: html
	@wkhtmltopdf --enable-local-file-access --print-media-type resume.html resume.pdf

clean:
	@rm -v resume.{html,pdf}
