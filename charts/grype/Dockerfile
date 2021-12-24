FROM alpine

COPY bin/grype /usr/local/bin/grype

COPY db /root/.cache/grype/db/

COPY config.yaml /root/.grype.yaml 

ENTRYPOINT ["grype"]


