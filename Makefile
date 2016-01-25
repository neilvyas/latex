test: assignment essay notes

assignment:
	rubber --pdf test/assignment_test.tex
	rubber --clean test/assignment_test.pdf
	mv test/assignment_test.pdf examples/assignment_test.pdf

essay:
	rubber --pdf test/essay_test.tex
	rubber --clean test/essay_test.pdf
	mv test/essay_test.pdf examples/essay_test.pdf

notes:
	rubber --pdf test/notes_test.tex
	rubber --clean test/notes_test.pdf
	mv test/notes_test.pdf examples/essay_test.pdf

clean:
	rm -r *.aux
	rm -r *.log
	rm -r *.out
