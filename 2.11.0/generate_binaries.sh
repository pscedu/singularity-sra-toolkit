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
	module load singularity
fi

VERSION=2.11.0
PACKAGE=sra-toolkit
TOOL=TOOL_NAME
DIRECTORY=/opt/packages/\$PACKAGE/\$VERSION

PERSISTENT_FILE_STORAGE=/ocean
if [ -d \$PERSISTENT_FILE_STORAGE ]; then
        OPTIONS="-B \$PERSISTENT_FILE_STORAGE"
fi

if [ -d /local ]; then
        OPTIONS=\$OPTIONS" -B /local"
fi

singularity exec \$OPTIONS \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif \$TOOL "\$@"
EOF

for TOOL in "${TOOLS[@]}"
do
        echo "* "$TOOL
        cp template $TOOL
        sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
        chmod +x $TOOL
done

rm -f template
