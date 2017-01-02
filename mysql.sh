#!/usr/bin/env bash
echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY 'toor' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql  
