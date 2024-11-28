#
# Copiar ficheros de configuración de apache2 que incluyen:
#
# - apache2.conf,
# - apolo.olimpo.test.conf
# - atenea.olimpo.test.conf
#

# tu código aquí
    cp /vagrant/apolo.olimpo.test.conf /etc/apache2/sites-available/
    cp /vagrant/atenea.olimpo.test.conf /etc/apache2/sites-available/
#
# Habilitar los servidores virtuales
#

# tu código aquí
#
    sudo a2dissite 000-default.conf
    sudo a2ensite apolo.olimpo.test
    sudo a2ensite atenea.olimpo.test
# Reiniciar el servicio
#
    sudo systemctl restart apache2
# tu código aquí
