!#/usr/bin/bash

velero install \
    --provider aws \
    --bucket velero \
    --secret-file ./credentials-velero \
    --use-volume-snapshots=false \
    --plugins velero/velero-plugin-for-aws:v1.1.0 \
    --backup-location-config region=minio,s3ForcePathStyle="true",s3Url=http://192.168.100.101:30090/
