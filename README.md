[`pRoloc`](http://www.bioconductor.org/packages/devel/bioc/html/pRoloc.html)
is a Bioconductor package for the analysis of experimental spatial
proteomics data.  It is available from Bioconductor `>= 2.12` and
requires `R (>= 3.0.0)`.

<a href="http://www.bioconductor.org/packages/devel/bioc/html/pRoloc.html#since"><img border="0" src="http://www.bioconductor.org/shields/years-in-bioc/pRoloc.svg" title="How long since the package was first in a released Bioconductor version (or is it in devel only)."></a> <a href="http://bioconductor.org/packages/stats/bioc/pRoloc.html"><img border="0" src="http://www.bioconductor.org/shields/downloads/pRoloc.svg" title="Percentile (top 5/20/50% or 'available') of downloads over last 6 full months. Comparison is done across all package categories (software, annotation, experiment)."></a> <a href="https://support.bioconductor.org/t/pRoloc/"><img border="0" src="http://www.bioconductor.org/shields/posts/pRoloc.svg" title="Support site activity, last 6 months: tagged questions/avg. answers per question/avg. comments per question/accepted answers, or 0 if no tagged posts."></a> <a href="http://www.bioconductor.org/packages/devel/bioc/html/pRoloc.html#svn_source"><img border="0" src="http://www.bioconductor.org/shields/commits/bioc/pRoloc.svg" title="average Subversion commits (to the devel branch) per month for the last 6 months"></a>

**Current build status**:
- `release` <a href="http://www.bioconductor.org/packages/release/bioc/html/pRoloc.html#archives"><img border="0" src="http://www.bioconductor.org/shields/availability/release/pRoloc.svg" title="Whether the package is available on all platforms; click for details."></a> <a href="http://bioconductor.org/checkResults/release/bioc-LATEST/pRoloc/"><img border="0" src="http://www.bioconductor.org/shields/build/release/bioc/pRoloc.svg" title="build results; click for full report"></a>
- `devel` <a href="http://www.bioconductor.org/packages/devel/bioc/html/pRoloc.html#archives"><img border="0" src="http://www.bioconductor.org/shields/availability/devel/pRoloc.svg" title="Whether the package is available on all platforms; click for details."></a> <a href="http://bioconductor.org/checkResults/devel/bioc-LATEST/pRoloc/"><img border="0" src="http://www.bioconductor.org/shields/build/devel/bioc/pRoloc.svg" title="build results; click for full report"></a>

The `pRoloc` suite set of software are distributed as part of the
R/[Bioconductor](http://bioconductor.org/) project and are developed
at the [Computational Proteomics Unit](http://cpu.sysbiol.cam.ac.uk/)
and
[Cambridge Centre for Proteomics](http://proteomics.bio.cam.ac.uk/)
labs, at the University of Cambridge.

## Getting started

The `pRoloc` software comes with ample documentation. The main
tutorial
([release](http://www.bioconductor.org/packages/release/bioc/vignettes/pRoloc/inst/doc/pRoloc-tutorial.pdf)
and
[devel](http://www.bioconductor.org/packages/devel/bioc/vignettes/pRoloc/inst/doc/pRoloc-tutorial.pdf))
provides a broad overview of the package and its functionality. See
the package page
([release](http://www.bioconductor.org/packages/release/bioc/html/pRoloc.html)
and
[devel](http://www.bioconductor.org/packages/devel/bioc/html/pRoloc.html))
for additional manuals.

Two associated packages, `pRolocdata`
([devel](http://www.bioconductor.org/packages/devel/data/experiment/html/pRolocdata.html)
and
[release](http://www.bioconductor.org/packages/release/data/experiment/html/pRolocdata.html))
and `pRolocGUI`
([release](http://www.bioconductor.org/packages/release/bioc/html/pRolocGUI.html)
and
[devel](http://www.bioconductor.org/packages/devel/bioc/html/pRolocGUI.html))
offer spatial proteomics data and a graphical user interface to
interactively explore the data.

Here are a set of
[video tutorial](https://www.youtube.com/playlist?list=PLvIXxpatSLA2loV5Srs2VBpJIYUlVJ4ow)
that illustrate the `pRoloc` framework.

## Help

Post your questions on the
[Bioconductor support site](https://support.bioconductor.org/),
tagging it with the package name `pRoloc` (the maintainer will
automatically be notified by email). If you identify a bug or have a
feature request, please open an
[issue](https://github.com/lgatto/pRoloc/issues) on the github
development page.

## Installation

The preferred installation procedure uses the Bioconductor
infrastructure:

```c
source("http://bioconductor.org/biocLite.R")
biocLite("pRoloc")
biocLite("pRolocdata")
biocLite("pRolocGUI")
```  

### Pre-release/development version

The pre-release/development code on github can be installed using
`biocLite`. Note that this requires a working R build environment (i.e
`Rtools` on Windows - see
[here](https://github.com/lgatto/teachingmaterial/wiki/R-package)). New
pre-release features might not be documented not thoroughly tested and
could substantially change prior to release. Use at your own risks.


```c
## install from github
biocLite("lgatto/pRoloc")
biocLite("lgatto/pRolocdata")
biocLite("ComputationalProteomicsUnit/pRolocGUI")
```

## References:

Gatto L, Breckels LM, Wieczorek S, Burger T, Lilley KS.
Mass-spectrometry-based spatial proteomics data analysis using pRoloc and
pRolocdata. Bioinformatics. 2014 May 1;30(9):1322-4. doi:
10.1093/bioinformatics/btu013. Epub 2014 Jan 11. 
[PubMed PMID: 24413670](http://www.ncbi.nlm.nih.gov/pubmed/24413670).

Breckels LM, Gatto L, Christoforou A, Groen AJ, Lilley KS, Trotter
MW. The effect of organelle discovery upon sub-cellular protein
localisation. J Proteomics. 2013 Aug 2;88:129-40. doi:
10.1016/j.jprot.2013.02.019. Epub 2013
Mar 21. [PubMed PMID: 23523639](http://www.ncbi.nlm.nih.gov/pubmed/23523639).

Gatto L, Breckels LM, Burger T, Nightingale DJ, Groen AJ, Campbell C,
Nikolovski N, Mulvey CM, Christoforou A, Ferro M, Lilley KS. A
foundation for reliable spatial proteomics data analysis. Mol Cell
Proteomics. 2014 Aug;13(8):1937-52. doi: 10.1074/mcp.M113.036350. Epub
2014 May 20. [PubMed PMID: 24846987](http://www.ncbi.nlm.nih.gov/pubmed/24846987)

Breckels LM, Holden S, Wojnar D, Mulvey CMM, Christoforou A, Groen AJ,
Kohlbacher O, Lilley KS and Gatto L. Learning from heterogeneous data
sources: an application in spatial proteomics. 2015 biorXiv, doi:
http://dx.doi.org/10.1101/022152

#### More resource
- R and Bioconductor for proteomics
  [web page](http://lgatto.github.io/RforProteomics/) and
  [package](http://www.bioconductor.org/packages/release/data/experiment/html/RforProteomics.html)
- Bioconductor proteomics [workflow](http://bioconductor.org/help/workflows/proteomics/)
