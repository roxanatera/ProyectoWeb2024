<?php 
	const BASE_URL = "http://localhost/donasolidaria";
	

	//Zona horaria
	date_default_timezone_set('Europe/Madrid');

	//Datos de conexión a Base de Datos
	const DB_HOST = "localhost;port=3307";
	const DB_NAME = "donasolidaria";
	const DB_USER = "root";
	const DB_PASSWORD = "";
	const DB_CHARSET = "utf8";

	//Para envío de correo
	const ENVIRONMENT = 1; // Local: 0, Produccón: 1;

	//Deliminadores decimal y millar Ej. 24,1989.00
	const SPD = ".";
	const SPM = ",";

	//Simbolo de moneda
	const SMONEY = "€";
	const CURRENCY = "Euro";

	//Api PayPal
	//SANDBOX PAYPAL
	const URLPAYPAL = "https://api-m.sandbox.paypal.com";
	const IDCLIENTE = "";
	const SECRET = "";
	//LIVE PAYPAL
	//const URLPAYPAL = "https://api-m.paypal.com";
	//const IDCLIENTE = "";
	//const SECRET = "";

	//Datos envio de correo
	const NOMBRE_REMITENTE = "DonaSolidaria_Smile";
	const EMAIL_REMITENTE = "no-reply@donasolidaria";
	const NOMBRE_EMPRESA= "DonaSolidaria_Smile";
	const WEB_EMPRESA = "www.DonaSolidaria_Smile.com";

	const DESCRIPCION = "La mejor manera de ayudar es Donando.";
	const SHAREDHASH = "donasolidaria";

	//Datos Empresa
	const DIRECCION = "Calle Sueño del Patricio";
	const TELEMPRESA = "+(34)604971910";
	const WHATSAPP = "+34604971910";
	const EMAIL_EMPRESA = "donasolidaria@gmail.com";
	const EMAIL_PEDIDOS = "donasolidaria@gmail.com"; 
	const EMAIL_SUSCRIPCION = "donasolidaria@gmail.com";
	const EMAIL_CONTACTO = "donasolidaria@gmail.com";

	const CAT_SLIDER = "1,2,3";
	const CAT_BANNER = "4,5,6";
	const CAT_FOOTER = "1,2,3,4,5";

	//Datos para Encriptar / Desencriptar
	const KEY = 'abelosh';
	const METHODENCRIPT = "AES-128-ECB";

	//Envío
	const COSTOENVIO = 2;

	//Módulos
	const MDASHBOARD = 1;
	const MUSUARIOS = 2;
	const MCLIENTES = 3;
	const MPRODUCTOS = 4;
	const MPEDIDOS = 5;
	const MCATEGORIAS = 6;
	const MSUSCRIPTORES = 7;
	const MDCONTACTOS = 8;
	const MDPAGINAS = 9;

	//Páginas
	const PINICIO = 1;
	const PTIENDA = 2;
	const PCARRITO = 3;
	const PNOSOTROS = 4;
	const PCONTACTO = 5;
	const PPREGUNTAS = 6;
	const PTERMINOS = 7;
	const PNOTICIAS = 8;
	const PERROR = 9;
	const PAPOYO = 12;

	//Roles
	const RADMINISTRADOR = 1;
	const RSUPERVISOR = 2;
	const RCLIENTES = 3;

	const STATUS = array('Completo','Aprobado','Cancelado','Reembolsado','Pendiente','Entregado');

	//Productos por página
	const CANTPORDHOME = 8;
	const PROPORPAGINA = 4;
	const PROCATEGORIA = 4;
	const PROBUSCAR = 4;

	//REDES SOCIALES
	const FACEBOOK = "https://www.facebook.com/DonaSolidariaSmile";
	const INSTAGRAM = "https://www.instagram.com/donasolidaria";
	

 ?>