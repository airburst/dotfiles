!#/bin/bash
# Usage: ./encrypt.sh <password>
# Encrypts the id_rsa file with the given password
openssl aes-256-cbc -a -salt -pbkdf2 -in id_rsa -out id_rsa.enc -pass pass:$1
