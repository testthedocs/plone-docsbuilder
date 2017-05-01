FROM alpine:latest
LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

ENV PIP_CACHE /root/.cache

RUN builddeps=' \
    git \
    && adduser -s /bin/false -D -H sphinx \
    && apk --no-cache add \
    $builddeps \
    python3 \
    make \
    tini \
    su-exec \
    && python3 -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip3 install --upgrade pip \
    && pip3 install sphinx \
    sphinx_rtd_theme \
    && pip install -e git://github.com/svx/sphinxcontrib-osexample.git@plone#egg=sphinxcontrib-osexample \
    && apk del --purge $builddeps \
    && rm -rf $PIP_CACHE

VOLUME ["/build/docs"]

COPY _config /build/_config
COPY Makefile /build/Makefile
COPY _theme /build/_theme

WORKDIR /build

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]