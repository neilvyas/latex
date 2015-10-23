test:
	rubber --pdf test.tex
	rubber --clean test.pdf
	open test.pdf
