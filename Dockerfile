from openalpr:aarm64

run apt-get install -y \
    python\
    python-pip

run pip install tornado

copy *.py /

workdir /srv/openalpr/src/bindings/python

run sh /srv/openalpr/src/bindings/python/make.sh; exit 0

workdir /data
expose 8888
CMD ["python", "/openalpr_web.py"]

