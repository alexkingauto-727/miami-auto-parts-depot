<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html lang="es">
      <head>
        <title>Sitemap XML — Miami Auto Parts Depot LLC</title>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <style>
          * { box-sizing: border-box; margin: 0; padding: 0; }
          body { font-family: 'Segoe UI', Arial, sans-serif; background: #0a0a0a; color: #f0f0f0; }
          header { background: #111; border-bottom: 3px solid #e63012; padding: 20px 40px; display: flex; align-items: center; gap: 16px; }
          header .logo { background: #e63012; color: #fff; font-weight: 900; font-size: 20px; width: 44px; height: 44px; border-radius: 8px; display: flex; align-items: center; justify-content: center; }
          header h1 { font-size: 22px; color: #fff; }
          header p { font-size: 13px; color: #888; margin-top: 2px; }
          .stats { display: flex; gap: 24px; padding: 20px 40px; background: #111; border-bottom: 1px solid #1a1a1a; }
          .stat { font-size: 13px; color: #888; } .stat strong { color: #e63012; font-size: 20px; display: block; }
          table { width: 100%; border-collapse: collapse; }
          thead tr { background: #1a1a1a; }
          thead th { padding: 14px 20px; text-align: left; font-size: 11px; letter-spacing: 2px; text-transform: uppercase; color: #666; border-bottom: 1px solid #222; }
          tbody tr { border-bottom: 1px solid #151515; transition: background 0.15s; }
          tbody tr:hover { background: #141414; }
          tbody td { padding: 14px 20px; font-size: 13px; color: #aaa; vertical-align: middle; }
          tbody td a { color: #4285F4; text-decoration: none; font-size: 13px; }
          tbody td a:hover { text-decoration: underline; }
          .badge { display: inline-block; padding: 3px 10px; border-radius: 20px; font-size: 11px; font-weight: 700; }
          .p-high { background: rgba(230,48,18,0.15); color: #e63012; border: 1px solid rgba(230,48,18,0.3); }
          .p-med { background: rgba(251,188,5,0.12); color: #FBBC05; border: 1px solid rgba(251,188,5,0.3); }
          .p-low { background: rgba(136,136,136,0.12); color: #888; border: 1px solid rgba(136,136,136,0.2); }
          .freq { color: #555; font-size: 12px; }
          footer { padding: 20px 40px; text-align: center; font-size: 12px; color: #444; border-top: 1px solid #1a1a1a; margin-top: 20px; }
        </style>
      </head>
      <body>
        <header>
          <div class="logo">🔧</div>
          <div>
            <h1>Miami Auto Parts Depot LLC — Sitemap XML</h1>
            <p>miamiautopartsdepot.com · Opa Locka, FL 33054 · Exportamos a Latinoamérica</p>
          </div>
        </header>
        <div class="stats">
          <div class="stat"><strong><xsl:value-of select="count(sitemap:urlset/sitemap:url)"/></strong> URLs indexadas</div>
          <div class="stat"><strong>2026</strong> Última actualización</div>
          <div class="stat"><strong>ES</strong> Idioma principal</div>
        </div>
        <table>
          <thead>
            <tr>
              <th>#</th>
              <th>URL</th>
              <th>Prioridad</th>
              <th>Frecuencia</th>
              <th>Última modificación</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="sitemap:urlset/sitemap:url">
              <xsl:sort select="sitemap:priority" order="descending" data-type="number"/>
              <tr>
                <td style="color:#555;"><xsl:value-of select="position()"/></td>
                <td><a href="{sitemap:loc}"><xsl:value-of select="sitemap:loc"/></a></td>
                <td>
                  <xsl:choose>
                    <xsl:when test="sitemap:priority >= 0.9">
                      <span class="badge p-high"><xsl:value-of select="sitemap:priority"/></span>
                    </xsl:when>
                    <xsl:when test="sitemap:priority >= 0.6">
                      <span class="badge p-med"><xsl:value-of select="sitemap:priority"/></span>
                    </xsl:when>
                    <xsl:otherwise>
                      <span class="badge p-low"><xsl:value-of select="sitemap:priority"/></span>
                    </xsl:otherwise>
                  </xsl:choose>
                </td>
                <td class="freq"><xsl:value-of select="sitemap:changefreq"/></td>
                <td class="freq"><xsl:value-of select="sitemap:lastmod"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
        <footer>
          Sitemap generado para Miami Auto Parts Depot LLC · <a href="https://miamiautopartsdepot.com" style="color:#e63012;">miamiautopartsdepot.com</a>
        </footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
