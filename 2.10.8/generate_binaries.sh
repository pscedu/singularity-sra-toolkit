#!/bin/bash

TOOLS=(fastq-dump
prefetch
sam-dump
sra-pileup
vdb-config
vdb-decrypt
abi-dump
illumina-dump
sff-dump
sra-stat
vdb-dump
vdb-encrypt
vdb-validate)

cat << EOF > template
#!/bin/bash

if [ ! \$(command -v singularity) ]; then
	module load singularity/3.6.3
fi

VERSION=2.10.8
PACKAGE=sra-toolkit
TOOL=TOOL_NAME
DIRECTORY=/opt/packages/\$PACKAGE/\$VERSION

singularity exec -B /pylon5 \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif \$TOOL "\$@"
EOF

for TOOL in "${TOOLS[@]}"
do
	echo $TOOL
        cp template $TOOL
	sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
	chmod +x $TOOL
done

rm -f template
