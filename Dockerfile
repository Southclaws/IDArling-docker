FROM python:3

WORKDIR /idarling

RUN apt install -y git && \
    git clone https://github.com/fidgetingbits/IDArling . && \
    pip install PyQt5

EXPOSE 7000

ENTRYPOINT [ "python", "idarling_server.py", "-h=0.0.0.0", "-p=7000", "--no-ssl" ]
