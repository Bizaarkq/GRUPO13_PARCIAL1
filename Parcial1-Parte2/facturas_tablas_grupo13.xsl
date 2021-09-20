<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<head>
  <title>Parte 2</title>
  <link rel="stylesheet" href="facturas_tablas_grupo13.css"> </link>      
</head>
<body>
<xsl:for-each select="registro/factura">

<form id="form1" runat="server">

	<div class="Table">
		<div class="Row">
			<div class="Cell1"><p>Factura No. <u><xsl:value-of select="num"/></u></p></div>
			<div class="Cell1"><p>Tipo: <xsl:value-of select="@tipo"/></p></div>		
		</div>			
		
        <div class="Row1">
            <div class="Cell1">
                <p>Cliente: <xsl:value-of select="cliente/@codigo"/></p>
            </div>
            <div class="Cell1">
            </div>
        </div>
        
        
        <div class="Row1">
            <div class="Cell1">
                <p>Nombre: <xsl:value-of select="cliente/nombre"/></p> 
            </div>
            <div class="Cell1">
                <p>Documento: <xsl:value-of select="cliente/documento/dui|cliente/documento/pasaporte"/></p>
            </div>
        </div>
        
        <div class="Row1">
            <div class="Cell1">
                <p>Teléfono: <xsl:value-of select="cliente/telefono"/></p>
            </div>
            <div class="Cell1"> 
                <p>Email: <xsl:value-of select="cliente/email"/></p>
            </div>
        </div>
        
         <div class="Heading">
            <div class="Cell">
                <p>Codigo</p>
            </div>
            <div class="Cell">
                <p>Detalle</p>
            </div>
            <div class="Cell">
                <p>Cantidad</p>
            </div>
            <div class="Cell">
                <p>Precio</p>
            </div>
            <div class="Cell">
                <p>Subtotal</p>
            </div>
        </div>
        
        
        <div class="Row">
            <div class="Cell">
                <p><xsl:value-of select="lineafactura/codigo"/></p>
            </div>
            <div class="Cell">
                <p><xsl:value-of select="lineafactura/detalle"/></p>
            </div>
            <div class="Cell">
                <p><xsl:value-of select="lineafactura/cantidad"/></p>
            </div>
            <div class="Cell">
                <p><xsl:value-of select="lineafactura/precio/moneda"/><xsl:value-of select="lineafactura/precio/valor"/></p>
            </div>
            <div class="Cell">
                <p><xsl:value-of select="lineafactura/subtotal/moneda"/><xsl:value-of select="lineafactura/subtotal/valor"/></p>
            </div>
        </div>
        
        <div class="Row3">
            <div class="cell2">
            </div>
            <div class="cell2">
            </div>
            <div class="cell2">
            </div>
            <div class="cell2">
                <p>TOTAL</p>
            </div>
            <div class="Cell">
                <p><xsl:value-of select="total/moneda"/><xsl:value-of select="total/valor"/></p>
            </div>
        </div>
	</div>
</form>
<br></br><br></br><br></br><br></br><br></br><br></br>
</xsl:for-each>
</body>
</html>