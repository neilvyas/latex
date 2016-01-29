test: assignment essay notes resume

assignment:
	rubber --pdf test/assignment_test.tex
	rubber --clean test/assignment_test.tex
	mv assignment_test.pdf examples/assignment_test.pdf

essay:
	rubber --pdf test/essay_test.tex
	rubber --clean test/essay_test.tex
	mv essay_test.pdf examples/essay_test.pdf

notes:
	rubber --pdf test/notes_test.tex
	rubber --clean test/notes_test.tex
	mv notes_test.pdf examples/notes_test.pdf

resume:
	rubber --pdf test/resume_test.tex
	rubber --clean test/resume_test.tex
	mv resume_test.pdf examples/resume_test.pdf

clean:
	rm -r *.aux
	rm -r *.log
	rm -r *.out
	rm -r *.bbl
