!#/bin/bash
# Usage: ./decrypt.sh <password>
# Decrypts the id_rsa.enc file with the given password
openssl aes-256-cbc -d -a -pbkdf2 -in id_rsa.enc -out id_rsa -pass pass:$1

# rm id_rsa.enc