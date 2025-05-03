DICE_SETS = 1d4 1d6 2d6 3d6 1d8 1d10 1d20 1d24 1d30 1d100
RUNS = 10
OUTDIR = output

ALL_PDFS = $(foreach die,$(DICE_SETS),$(foreach run,$(shell seq 1 $(RUNS)),$(OUTDIR)/$(die)_$(run)_final.pdf))
MERGED_PDF = $(OUTDIR)/all_dice_rolls.pdf

all: $(MERGED_PDF)

# Rule to generate the final PDF for each run
$(OUTDIR)/%_final.pdf: $(OUTDIR)/%_booklet.pdf
	pdfjam $< 2,1,4,3 --nup 2x2 --paper letterpaper --outfile $@

$(OUTDIR)/%_booklet.pdf: $(OUTDIR)/%_booklet.tex $(OUTDIR)/%_base.pdf
	lualatex -output-directory=$(OUTDIR) $<

$(OUTDIR)/%_booklet.tex: $(OUTDIR)/%_base.pdf generate_booklet_latex.rb
	./generate_booklet_latex.rb $(OUTDIR)/$*_base.pdf > $@

# Rule to generate the base PDF using the script
$(OUTDIR)/%_base.pdf: $(OUTDIR)/%_base.tex
	lualatex -output-directory=$(OUTDIR) $<

$(OUTDIR)/%_base.tex: generate_latex.rb paper_dice.erb
	@mkdir -p $(OUTDIR)
	@dice=$(shell echo $* | cut -d_ -f1); \
	index=$(shell echo $* | cut -d_ -f2); \
	./generate_latex.rb $$dice $$index > $@

# Merge all the final PDFs into one
$(MERGED_PDF): $(ALL_PDFS)
	pdfunite $^ $@

clean:
	rm -rf $(OUTDIR)

