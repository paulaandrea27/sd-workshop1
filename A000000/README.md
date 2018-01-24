# Taller 1

**Nombre:** Paula Andrea Bolaños Arias  
**Código:** A00068008

## Descripción
Este es un manual donde se explican los pasos para:
* Instalar y configurar CentOS7
* Instalar y configurar el servidor Apache

## Pasos
* Configurar interfaz de red como bridge en settings de VirtualBox.
* Cambiar a root:
    su
* Configuración de interfaces de red:
  cd /etc/sysconfig/network-scripts/
  vi ifcfg-enp0s3 
  ONBOOT=yes
* Reiniciar interfaces de red:
  systemctl restart network.service
* Ver ip:
  ip a
* Actualizar e instalar las herramientas de red:
  yum update
  yum install net-tools
* Habilitar el puerto 22 para conectarse por SSH:
  cd /etc/ssh/
  vi sshd_config 
* Des-comentar la línea: Port 22
* Reiniciar el servicio SSH:
  systemctl reload sshd
* Confirmar que el puerto 22 está escuchando:
  netstat -lntu
* Conectarse desde un cliente SSH a la dirección IP de la máquina por el puerto 22 al usuario1.
* Cambiar a root:
  su
* Instalar Apache:
  yum install httpd
* Habilitar los puertos para que funcione el servidor web por medio del Firewall:
  firewall-cmd --permanent --add-port=80/tcp
  firewall-cmd --permanent --add-port=443/tcp
* Reiniciar el Firewall:
  firewall-cmd --reload
* Iniciar el servicio y hacer que se ejecute automáticamente cuando se inicia la máquina:
  systemctl start httpd
  systemctl enable httpd
* Confirmar que el servicio está arriba y el puerto 80 está escuchando:
  systemctl status httpd
  netstat -lntu

## Referencias:
* http://www.grupotelfor.com/blog/7-centos-7/8-configurar-las-interfaces-de-red-en-centos-7 
* http://desarrollowebtutorial.com/configurar-ssh-en-centos-7/ 
* https://www.liquidweb.com/kb/how-to-install-apache-on-centos-7/


