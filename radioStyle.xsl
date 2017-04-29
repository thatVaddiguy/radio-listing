<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <!-- Making the html file -->
    <html>
      <head>
        <title>Radio Listing</title>
        <link href='//fonts.googleapis.com/css?family=Dosis' rel='stylesheet'/>
        <link rel="stylesheet" type="text/css" href="Radio.css"/>
      </head>
      <body>
        <img class="banner" src="http://thepraisehouse.com/wp-content/uploads/2016/12/Banner-radio.jpg" alt="banner"/>
        <h1>Radio Listings</h1>
        <!-- Table for the BBC Radio2 listings -->
        <a href="http://www.bbc.co.uk/radio2">
          <img class="logo" src = "http://vignette1.wikia.nocookie.net/logopedia/images/8/84/BBC_Radio_2.svg/revision/latest/scale-to-width-down/200?cb=20091108151722" alt="BBC radio 2 logo"/>
        </a>
        <table border="1">
          <tr class="tableHeader">
            <th>Show Title</th>
            <th>Show Alternate Title</th>
            <th>Start Time</th>
            <th>Duration</th>
            <th>Description</th>
            <th>Presenter</th>
          </tr>
          <xsl:for-each select="radioListing/radioStation[1]/radioShow">
            <tr>
              <td>
                <xsl:value-of select="showTitle"/>
              </td>
              <td>
                <!-- Checks if alternate title is not empty, if it is empty it outputs a dash , if it holds data it outputs the data -->
                <xsl:choose>
                  <xsl:when test="showAltTitle != ''">
                    <xsl:value-of select="showAltTitle" />
                  </xsl:when>
                  <xsl:otherwise>-</xsl:otherwise>
                </xsl:choose>
              </td>
              <td>
                <xsl:value-of select="startTime"/>
              </td>
              <td>
                <xsl:value-of select="duration"/>
              </td>
              <td>
                <xsl:value-of select="description"/>
              </td>
              <td>
                <!-- Checks if presenter is not empty, if it is empty it outputs a dash , if it holds data it outputs the data -->
                <xsl:choose>
                  <xsl:when test="presenters != ''">
                    <xsl:value-of select="presenters" />
                  </xsl:when>
                  <xsl:otherwise>-</xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <hr>
        </hr>
        <!-- Table for the BBC Radio3 listings -->
        <a href="http://www.bbc.co.uk/radio3">
          <img class="logo" src = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/BBC_Radio_3.svg/800px-BBC_Radio_3.svg.png" alt="BBC radio 3 logo"/>
        </a>
        <table border="1">
          <tr class="tableHeader">
            <th>Show Title</th>
            <th>Show Alternate Title</th>
            <th>Start Time</th>
            <th>Duration</th>
            <th>Description</th>
            <th>Presenter</th>
          </tr>
          <xsl:for-each select="radioListing/radioStation[2]/radioShow">
            <tr>
              <td>
                <xsl:value-of select="showTitle"/>
              </td>
              <td>
                <td>
                  <!-- Checks if alternate title is not empty, if it is empty it outputs a dash , if it holds data it outputs the data -->
                  <xsl:choose>
                    <xsl:when test="showAltTitle != ''">
                      <xsl:value-of select="showAltTitle" />
                    </xsl:when>
                    <xsl:otherwise> - </xsl:otherwise>
                  </xsl:choose>
                </td>
              </td>
              <td>
                <xsl:value-of select="startTime"/>
              </td>
              <td>
                <xsl:value-of select="duration"/>
              </td>
              <td>
                <xsl:value-of select="description"/>
              </td>
              <td>
                <!-- Checks if presenter is not empty, if it is empty it outputs a dash , if it holds data it outputs the data -->
                <xsl:choose>
                  <xsl:when test="presenters != ''">
                    <xsl:value-of select="presenters" />
                  </xsl:when>
                  <xsl:otherwise>-</xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <hr>
        </hr>
        <!-- Table for the BBC Radio4 listings -->
        <a href="http://www.bbc.co.uk/radio4">
          <img class="logo" src = "https://upload.wikimedia.org/wikipedia/en/thumb/5/53/BBC_Radio_4.svg/800px-BBC_Radio_4.svg.png" alt="BBC radio 4 logo"/>
        </a>
        <table border="1">
          <tr class="tableHeader">
            <th>Show Title</th>
            <th>Show Alternate Title</th>
            <th>Start Time</th>
            <th>Duration</th>
            <th>Description</th>
            <th>Presenter</th>
          </tr>
          <xsl:for-each select="radioListing/radioStation[3]/radioShow">
            <tr>
              <td>
                <xsl:value-of select="showTitle"/>
              </td>
              <td>
                <td>
                  <!-- Checks if alternate title is not empty, if it is empty it outputs a dash , if it holds data it outputs the data -->
                  <xsl:choose>
                    <xsl:when test="showAltTitle != ''">
                      <xsl:value-of select="showAltTitle" />
                    </xsl:when>
                    <xsl:otherwise> - </xsl:otherwise>
                  </xsl:choose>
                </td>
              </td>
              <td>
                <xsl:value-of select="startTime"/>
              </td>
              <td>
                <xsl:value-of select="duration"/>
              </td>
              <td>
                <xsl:value-of select="description"/>
              </td>
              <td>
                <!-- Checks if presenter is not empty, if it is empty it outputs a dash , if it holds data it outputs the data -->
                <xsl:choose>
                  <xsl:when test="presenters != ''">
                    <xsl:value-of select="presenters" />
                  </xsl:when>
                  <xsl:otherwise> - </xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <hr>
        </hr>
        <footer>
          <p>Powered by Rohit Vaddi</p>
        </footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
