<?php
$pdo = new PDO('mysql:dbname='.$_ENV["MYSQL_DATABASE"].';host=mysql', $_ENV["MYSQL_USER"], $_ENV["MYSQL_PASSWORD"], [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);

$query = $pdo->query('SHOW VARIABLES like "version"');

$row = $query->fetch();

echo 'MySQL version:' . $row['Value'];

phpinfo();