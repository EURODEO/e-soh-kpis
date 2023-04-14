SHELL := /bin/bash
PANDOC = /usr/local/bin/pandoc
HTMLFILE = e-soh-kpis-doc.html
#BROWSER = chromium

html: pandoc

pandoc:
	echo "<h1>E-SOH KPI document</h1>" > pandoc-heading.TMP
	echo "<p>Generated (using Pandoc) from Git at: `date -u +'%F %T UTC'`." >> pandoc-heading.TMP
	echo "<p>Github repository: <a href=\"https://github.com/EURODEO/e-soh-kpis\">https://github.com/EURODEO/e-soh-kpis</a></p>" >> pandoc-heading.TMP	
	cat introduction/introduction.md > pandoc.TMP
	echo "" >> pandoc.TMP
	cat stakeholders/stakeholders.md >> pandoc.TMP
	echo "" >> pandoc.TMP
	cat data-consumers/data-consumers.md >> pandoc.TMP
	echo "" >> pandoc.TMP
	cat ingest/ingest.md >> pandoc.TMP
	echo "" >> pandoc.TMP
	cat software/software.md >> pandoc.TMP
	echo "" >> pandoc.TMP
	cat data-and-metadata/data-and-metadata.md >> pandoc.TMP
	echo "" >> pandoc.TMP
	cat conclusion/conclusion.md >> pandoc.TMP
	echo "" >> pandoc.TMP
	$(PANDOC) -s -N -B pandoc-heading.TMP --metadata title="E-SOH KPIs document" --toc --toc-depth=2 -c pandoc.css -f markdown -t html pandoc.TMP > $(HTMLFILE)
	rm pandoc.TMP
	rm pandoc-heading.TMP
	#$(BROWSER) $(HTMLFILE)

clean:
	rm -f $(HTMLFILE)



