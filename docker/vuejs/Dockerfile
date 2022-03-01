FROM debian:11-slim
ARG http_proxy=${HTTP_PROXY}
ARG https_proxy=${HTTP_PROXY}
ENV http_proxy=${HTTP_PROXY}
ENV https_proxy=${HTTP_PROXY}
RUN apt-get update && apt-get -y install npm build-essential
CMD bash