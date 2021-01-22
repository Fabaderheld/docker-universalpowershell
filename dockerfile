FROM mcr.microsoft.com/powershell:lts-arm32v7-ubuntu-18.04

RUN apt-get update && apt-get install -y zip

RUN mkdir /opt/universalpowershell

ADD https://imsreleases.blob.core.windows.net/universal-nightly/500050875/Universal.linux-arm.1.5.9.zip /tmp

RUN unzip /tmp/Universal.linux-arm.1.5.9.zip -d /opt/universalpowershell/

RUN chmod +x /opt/universalpowershell/Universal.Server

EXPOSE 5000
ENTRYPOINT [ "/opt/universalpowershell/Universal.Server" ]