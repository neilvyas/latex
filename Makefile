test:
	rubber --pdf test.tex
	rubber --clean test.pdf
	open test.pdf

tEssay:
	rubber --pdf test_essay.tex
	rubber --clean test_essay.pdf
	open test_essay.pdf

clean:
	rm *.aux
	rm *.log
