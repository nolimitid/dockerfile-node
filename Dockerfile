# NolimitID docker images with nodesource's trusty,
# nodejs v0.12.7, rsync, and ubuntu build-tools.

FROM nodesource/trusty:0.12.7

MAINTAINER maman <achmad@mahardi.me>

# Set ENV
ENV NODE_ENV development

# Commands
RUN \
  apt-get update && \
  apt-get upgrade -y --force-yes && \
  apt-get install -y --force-yes build-essential curl ca-certificates bzip2 rsync ssh && \
  apt-get autoremove -y && \
  apt-get clean all
