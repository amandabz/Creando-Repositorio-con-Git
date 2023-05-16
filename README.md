# Repositorio AWS CloudFormation
## Por Amanda Benitez Hidalgo

### deploy-stack: levanta la instancia en AWS
### tear-down-stack: elimina la instancia de AWS
### main.yml: crea una instancia con las características especificadas en el fichero yml (grupo de seguridad, filtro de resultados, salidas, outputs, etc...)

## Instalar Pila LAMP en Servidor Amazon Linux: 
### Lo primero que tenemos que hacer es crear una instancia EC2 con Amazon Linux y una vez la hayamos creado nos conectamos a ella mendiante SSH. 
### Cuando estemos dentro de la instancia, escribimos los siguientes comandos:  
### sudo dnf update -y
### sudo dnf install -y httpd wget php-fpm php-mysqli php-json php php-devel
### sudo dnf install mariadb105-server
### y creamos un archivo llamado phpinfo.php con el siguiente contenido: <?php phpinfo(); ?> en la ruta /var/www/html
#
#
### Una vez hayamos hecho esto, volvemos a ejecutar los siguientes comandos:
### sudo systemctl start httpd
### sudo systemctl enable httpd
#
#
### Para verificar que que httpd está corriendo, escribimos el siguiente comando: 
### sudo systemctl is-enabled httpd
#
#
### Cuando hayamos hecho todo esto, ponemos en la URL de nuestro buscador la DNS pública de nuestra instancia seguida de /phpinfo.php. Esto nos dará información sobre nuestro servidor PHP.