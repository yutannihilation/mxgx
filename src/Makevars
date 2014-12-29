PACKAGE := metricsgraphics
TARGETDIR := ../inst/htmlwidgets
LIBDIR := $(TARGETDIR)/lib/$(PACKAGE)/

JSFILES := \
	htmlwidgets/$(PACKAGE).js \
	htmlwidgets/lib/jquery/dist/jquery.js \
	htmlwidgets/lib/d3/d3.min.js \
	htmlwidgets/lib/metrics-graphics/dist/$(PACKAGE).js

CSSFILES := \
	htmlwidgets/lib/metrics-graphics/dist/$(PACKAGE).css

YAMLFILE := htmlwidgets/$(PACKAGE).yaml.tpl

all: $(LIBDIR) $(LIBDIR)/$(PACKAGE).js $(LIBDIR)/$(PACKAGE).css $(TARGETDIR)/$(PACKAGE).yaml

.PHONY: clean all

$(LIBDIR):
	mkdir -p $(LIBDIR)

$(LIBDIR)/$(PACKAGE).js: $(JSFILES)
	@rm -f $@
	cat $^ | uglifyjs > $@

$(LIBDIR)/$(PACKAGE).css: $(CSSFILES)
	@rm -f $@
	cat $^ | uglifycss > $@

$(TARGETDIR)/$(PACKAGE).yaml: $(YAMLFILE)
	sed 's/PACKAGE/$(PACKAGE)/' $< > $@

clean:
	@rm -rf -- $(TARGETDIR)
