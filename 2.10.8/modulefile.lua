--
-- SRA Toolkit 2.10.8 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: The SRA Toolkit and SDK from NCBI is a collection of tools and libraries for using data in the INSDC Sequence Read Archives."
-- "Keywords : Singularity bioinformatics"

whatis("Name: SRA Toolkit")
whatis("Version: 2.10.8")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: The SRA Toolkit and SDK from NCBI is a collection of tools and libraries for using data in the INSDC Sequence Read Archives.")

help([[
sra-toolkit 2.10.8
------------------

Description
-----------
The SRA Toolkit and SDK from NCBI is a collection of tools and libraries for using data in the INSDC Sequence Read Archives.

To load the module type

> module load sra-toolkit/2.10.8

To unload the module type

> module unload sra-toolkit/2.10.8

Documentation
-------------
https://trace.ncbi.nlm.nih.gov/Traces/sra/sra.cgi?view=toolkit_doc

Repository
----------
https://github.com/ncbi/sra-tools

Tools included in this module are

* fastq-dump
* prefetch
* sam-dump
* sra-pileup
* vdb-config
* vdb-decrypt
* abi-dump
* illumina-dump
* sff-dump
* sra-stat
* vdb-dump
* vdb-encrypt
* vdb-validate
]])

local package = "sra-toolkit"
local version = "2.10.8"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
