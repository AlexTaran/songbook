all: py2tex
texsongs:
	python src/generator.py
py2tex: texsongs
	mkdir -p out
	cd out && \
	xelatex ../src/SongBook.tex
clean:
	rm -rf out
