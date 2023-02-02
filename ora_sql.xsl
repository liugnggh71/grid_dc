<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:functx="http://www.functx.com"
    exclude-result-prefixes="xs" version="2.0">

    <xsl:variable name="v_newline">
        <xsl:text>&#xa;</xsl:text>
    </xsl:variable>

    <xsl:function name="functx:if-absent" as="item()*" xmlns:functx="http://www.functx.com">
        <xsl:param name="arg" as="item()*"/>
        <xsl:param name="value" as="item()*"/>

        <xsl:sequence select="
                if (exists($arg))
                then
                    $arg
                else
                    $value
                "/>

    </xsl:function>

    <xsl:function name="functx:replace-multi" as="xs:string?" xmlns:functx="http://www.functx.com">
        <xsl:param name="arg" as="xs:string?"/>
        <xsl:param name="changeFrom" as="xs:string*"/>
        <xsl:param name="changeTo" as="xs:string*"/>

        <xsl:sequence select="
                if (count($changeFrom) > 0)
                then
                    functx:replace-multi(
                    replace($arg, $changeFrom[1],
                    functx:if-absent($changeTo[1], '')),
                    $changeFrom[position() > 1],
                    $changeTo[position() > 1])
                else
                    $arg
                "/>

    </xsl:function>


    <xsl:function name="functx:repeat-string" as="xs:string" xmlns:functx="http://www.functx.com">
        <xsl:param name="stringToRepeat" as="xs:string?"/>
        <xsl:param name="count" as="xs:integer"/>

        <xsl:sequence select="
                string-join((for $i in 1 to $count
                return
                    $stringToRepeat),
                '')
                "/>

    </xsl:function>

    <xsl:function name="functx:pad-string-to-length" as="xs:string"
        xmlns:functx="http://www.functx.com">
        <xsl:param name="stringToPad" as="xs:string?"/>
        <xsl:param name="padChar" as="xs:string"/>
        <xsl:param name="length" as="xs:integer"/>

        <xsl:sequence select="
                substring(
                string-join(
                ($stringToPad,
                for $i in (1 to $length)
                return
                    $padChar)
                , '')
                , 1, $length)
                "/>

    </xsl:function>
    <xsl:template name="get_indent">
        <xsl:variable name="v_indent_level">
            <xsl:value-of select="
                    sum(for $i in ancestor-or-self::*
                    return
                        $i/@indent)"/>
        </xsl:variable>
        <xsl:value-of select="functx:repeat-string('  ', $v_indent_level)"/>
    </xsl:template>

    <xsl:template match="full_code">
        <xsl:value-of select="$v_newline"/>
        <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="header">
        <xsl:variable name="v_desc">
            <xsl:text>- </xsl:text>
            <xsl:value-of select="../@name"/>
            <xsl:value-of select="$v_newline"/>
            <xsl:text>/*</xsl:text>
            <xsl:value-of select="$v_newline"/>
            <xsl:value-of select="desc"/>
            <xsl:value-of select="$v_newline"/>
            <xsl:text>*/</xsl:text>
            <xsl:value-of select="$v_newline"/>
        </xsl:variable>

        <xsl:value-of select="functx:repeat-string('-', 80)"/>
        <xsl:value-of select="$v_newline"/>
        <xsl:value-of select="$v_desc"/>
        <xsl:value-of select="functx:repeat-string('-', 80)"/>
        <xsl:value-of select="$v_newline"/>
    </xsl:template>


    <xsl:template name="dump_all">
        <xsl:result-document href="dump_all.xml" method="xml" indent="yes">
            <xsl:copy-of select="/"/>
        </xsl:result-document>
    </xsl:template>

    <xsl:template match="/">
        <xsl:call-template name="dump_all"/>
        <xsl:call-template name="gen_code"/>
        <xsl:call-template name="wget"/>
    </xsl:template>

    <xsl:template name="gen_code">
        <xsl:for-each select="/ora_sql_codes/ora_sql_code">
            <xsl:variable name="v_stage_dir">
                <xsl:choose>
                    <xsl:when test="string-length(../@stage_dir) &gt; 0">
                        <xsl:value-of select="../@stage_dir"/>
                        <xsl:text>/</xsl:text>
                    </xsl:when>
                    <xsl:when test="string-length(../../@stage_dir) &gt; 0">
                        <xsl:value-of select="../../@stage_dir"/>
                        <xsl:text>/</xsl:text>
                    </xsl:when>
                </xsl:choose>
            </xsl:variable>
            <xsl:variable name="v_code_file">
                <xsl:value-of select="$v_stage_dir"/>
                <xsl:value-of select="@subdir"/>
                <xsl:text>/</xsl:text>
                <xsl:value-of select="@name"/>
            </xsl:variable>
            <xsl:result-document href="{$v_code_file}" method="text">
                <xsl:for-each select="*">
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="wget">
        <xsl:variable name="f_wget" select="/ora_sql_codes/stage/wget_stage_code"/>
        <xsl:variable name="v_git_url" select="/ora_sql_codes/@git"/>
        <xsl:result-document href="{$f_wget}" method="text">
            <xsl:text># wget </xsl:text>
            <xsl:value-of select="$v_git_url"/>
            <xsl:text>/</xsl:text>
            <xsl:value-of select="$f_wget"/>
            <xsl:value-of select="$v_newline"/>
            <xsl:value-of select="$v_newline"/>

            <xsl:text><![CDATA[pwd=$(pwd)]]></xsl:text>
            <xsl:value-of select="$v_newline"/>

            <xsl:for-each-group select="//ora_sql_code[@name]" group-by="@subdir">
                <xsl:variable name="v_subdir" select="./@subdir"> </xsl:variable>
                <xsl:text>cd ${pwd}</xsl:text>
                <xsl:value-of select="$v_newline"/>
                <xsl:text>mkdir -p </xsl:text>
                <xsl:value-of select="$v_subdir"/>
                <xsl:value-of select="$v_newline"/>

                <xsl:text>cd ${pwd}/</xsl:text>
                <xsl:value-of select="$v_subdir"/>
                <xsl:value-of select="$v_newline"/>
                <xsl:for-each select="current-group()">
                    <xsl:text>wget </xsl:text>
                    <xsl:value-of select="$v_git_url"/>
                    <xsl:text>/</xsl:text>
                    <xsl:value-of select="@subdir"/>
                    <xsl:text>/</xsl:text>
                    <xsl:value-of select="@name"/>
                    <xsl:value-of select="$v_newline"/>

                </xsl:for-each>
            </xsl:for-each-group>

            <xsl:for-each-group select="//bash_code[@symbolic_link]" group-by="@subdir">
                <xsl:variable name="v_subdir" select="./@subdir"> </xsl:variable>
                <xsl:text>cd ${pwd}/</xsl:text>
                <xsl:value-of select="$v_subdir"/>
                <xsl:value-of select="$v_newline"/>
                <xsl:for-each select="current-group()">
                    <xsl:text>ln -s </xsl:text>
                    <xsl:value-of select="./@name"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="./@symbolic_link"/>
                    <xsl:value-of select="$v_newline"/>
                </xsl:for-each>
            </xsl:for-each-group>
            <xsl:text>cd ${pwd}</xsl:text>
            <xsl:value-of select="$v_newline"/>
        </xsl:result-document>
    </xsl:template>

</xsl:stylesheet>
