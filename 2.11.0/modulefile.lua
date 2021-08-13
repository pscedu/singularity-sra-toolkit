--
-- SRA Toolkit 2.11.0 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: The SRA Toolkit and SDK from NCBI is a collection of tools and libraries for using data in the INSDC Sequence Read Archives."

whatis("Name: SRA Toolkit")
whatis("Version: 2.11.0")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: The SRA Toolkit and SDK from NCBI is a collection of tools and libraries for using data in the INSDC Sequence Read Archives.")

help([[
sra-toolkit 2.11.0
------------------

Description
-----------
The SRA Toolkit and SDK from NCBI is a collection of tools and libraries for using data in the INSDC Sequence Read Archives.

To load the module type

> module load sra-toolkit/2.11.0

To unload the module type

> module unload sra-toolkit/2.11.0

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
local version = "2.11.0"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
