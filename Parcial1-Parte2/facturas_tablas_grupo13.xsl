<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<head>
  <title>Registro de Facturas   Parte 2</title>
  <link rel="stylesheet" href="facturas_tablas_grupo13.css"> </link>      
</head>
<body>
<xsl:for-each select="registro/factura">
<table>
	<thead>
	
	</thead>
	
	<tbody>
	
	<tr>
		<td >Factura No.  <xsl:value-of select="num"/>    </td>
		
		<td>Tipo:   <xsl:value-of select="@tipo"/></td>	
	</tr>
	<xsl:for-each select="cliente">
	<tr>
		<td>Cliente:   <xsl:value-of select="@codigo"/></td>
	</tr>
	
	<tr>
		<td>Nombre: <xsl:value-of select="nombre"/></td>
	<xsl:for-each select="documento">
		<td>Documento: <xsl:value-of select="dui|pasaporte"/></td>
	</xsl:for-each>
	</tr>
	
	<tr>
		<td>Telefono: <xsl:value-of select="telefono"/></td>
		<td>Email: <xsl:value-of select="email"/></td>
	</tr>
	</xsl:for-each>
	
	
	
	<tr>
		<th>Código</th>
		<th>Detalle</th>
		<th>Cantidad</th>
		<th>Precio</th>
		<th>Subtotal</th>
	</tr>

	<xsl:for-each select="lineafactura">
	
	<tr>
		<td><xsl:value-of select="codigo"/></td>
		<td><xsl:value-of select="detalle"/></td>
		<td><xsl:value-of select="cantidad"/></td>
		
		<td><xsl:value-of select="precio/moneda"/><xsl:value-of select="precio/valor"/></td>
		<td><xsl:value-of select="subtotal/moneda"/><xsl:value-of select="subtotal/valor"/></td>
	</tr>
		</xsl:for-each>
	<tr>
		<th name="tot">Total</th>
		<td><xsl:value-of select="total/moneda"/><xsl:value-of select="total/valor"/></td>
	</tr>
	


	
	</tbody>



</table>
<br></br><br></br><br></br><br></br><br></br><br></br>
</xsl:for-each>
<br></br>
</body>
</html>