<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"  encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>PHP CodeSniffer Report</title>
                <style type="text/css">
                <![CDATA[
                body, table {
                    font-family: Verdana, Arial, Helvetica, Sans-Serif;
                    font-size: 100%;
                }
                table {
                    width:     100%;
                    max-width: 960px;
                    display:   block;
                }
                h1 {
                    font-size: 120%;
                }
                h2 {
                    font-size: 110%;
                }
                th {
                    text-align: left;
                    border-bottom: 1px solid #000;
                }
                td {
                    border-bottom: 1px dotted #000;
                }
                .error {
                    color: #aa0000;
                }
                .warning {
                    color: #000000;
                }
                ]]>
                </style>
            </head>
            <body>
                <h1>PHP CodeSniffer Report</h1>

                <xsl:for-each select="phpcs/file">
                    <h2><xsl:value-of select="@name" /></h2>

                    <p>
                        Errors: <span class="error"><xsl:value-of select="@errors" /></span> /
                        Warnings: <span class="warning"><xsl:value-of select="@warnings" /></span>
                    </p>

                    <table border="0" cellspacing="0" cellpadding="5">
                        <thead>
                            <tr>
                                <th width="10%">Line</th>
                                <th>Description</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="error">
                                <tr class="error">
                                    <td valign="top">
                                        <a href="txmt://open?url=file://{../@name}&amp;line={@line}&amp;column={@column}"><xsl:value-of select="@line" /></a>
                                    </td><td>
                                        <xsl:value-of select="self::node()"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                            <xsl:for-each select="warning">
                                <tr class="warning">
                                    <td valign="top">
                                        <a href="txmt://open?url=file://{../@name}&amp;line={@line}&amp;column={@column}"><xsl:value-of select="@line" /></a>
                                    </td><td>
                                        <xsl:value-of select="self::node()"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
