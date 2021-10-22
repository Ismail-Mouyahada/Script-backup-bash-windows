# Déclaration des variables generiques
today =  $(date +%Y-%m-%d)
destination_backup = backup
vhost_path = /etc/apache2/sites-availables

#Déclaration variable spécifiques 
source $1

#Export DB
mysqldump -u $db_login -$db_pwd $db_name  > dbbackupfile

#Création archive
tar -czf $backup_file $vhost $website_files $dbbackupfile

#Clean export DB
rm $dbkacupfile


