FROM streamsets/datacollector:3.18.1

ENV SDC_ROOT=/opt/streamsets-datacollector-3.18.1

# Build time argument to install packages
ARG PACKAGES_TO_INSTALL=streamsets-datacollector-apache-kafka_2_0-lib,streamsets-datacollector-apache-kafka_1_1-lib,streamsets-datacollector-jdbc-lib,streamsets-datacollector-groovy_2_4-lib,streamsets-datacollector-aws-lib,streamsets-datacollector-mongodb_3-lib,streamsets-datacollector-orchestrator-lib

# Install the packages
RUN if [[ ! -z $PACKAGES_TO_INSTALL ]]; then $SDC_DIST/bin/streamsets stagelibs -install=$PACKAGES_TO_INSTALL ; fi

COPY conf/sdc.properties ${SDC_CONF}/
COPY sdc-extras/ ${SDC_ROOT}/streamsets-libs-extras

RUN sudo chown -R sdc:sdc ${SDC_ROOT}/streamsets-libs-extras
