CV_FNAME := cv
CV_TARGET := $(CV_FNAME).tex
CV_OUTPUT := $(CV_FNAME).pdf
COVERLETTER_FNAME := coverletter
COVERLETTER_TARGET := $(COVERLETTER_FNAME).tex
COVERLETTER_OUTPUT := $(COVERLETTER_FNAME).pdf
EXAMPLE_DIR := examples
EXE := lualatex
OPTS := -halt-on-error
ENV := TEXINPUTS="./src/:"
all: ${CV_OUTPUT} ${COVERLETTER_OUTPUT}

update-examples:
	cp ${CV_OUTPUT} ${EXAMPLE_DIR}/${CV_OUTPUT}
	cp ${COVERLETTER_OUTPUT} ${EXAMPLE_DIR}/${COVERLETTER_OUTPUT}
	magick convert -flatten -density 300 ${CV_OUTPUT}[0] -quality 100 ${EXAMPLE_DIR}/${CV_FNAME}.png
	magick convert -flatten -density 300 ${COVERLETTER_OUTPUT}[0] -quality 100 ${EXAMPLE_DIR}/${COVERLETTER_FNAME}.png

clean:
	rm -f $(patsubst %,$(CV_FNAME).%,log aux pdf out)
	rm -f $(patsubst %,$(COVERLETTER_FNAME).%,log aux pdf out)
	rm -f texput.log

$(CV_OUTPUT):
	$(ENV) $(EXE) $(CV_TARGET) $(OPTS)
	$(ENV) $(EXE) $(CV_TARGET) $(OPTS)

$(COVERLETTER_OUTPUT):
	$(ENV) $(EXE) $(COVERLETTER_TARGET) $(OPTS)
	$(ENV) $(EXE) $(COVERLETTER_TARGET) $(OPTS)
