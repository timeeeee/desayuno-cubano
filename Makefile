all: whatisthis.ly
	lilypond whatisthis.ly

clean:
	rm -f \#*\# *~ *.pdf
