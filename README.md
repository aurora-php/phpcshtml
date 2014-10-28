phpcshtml
=========

XSLT stylesheet for converting PHP codesniffer XML reports to html.

Example
-------

    phpcs -n --standard=psr2 --extensions=php --report-xml <path> \
        | xsltproc phpcshtml.xsl -
        > /tmp/report.html

