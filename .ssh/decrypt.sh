!#/bin/bash
# Usage: ./decrypt.sh <password>
# Decrypts the id_rsa.enc file with the given password
openssl aes-256-cbc -d -a -pbkdf2 -in id_rsa.enc -out id_rsa -pass pass:$1

# Set permissions
chmod 600 id_rsa

# rm id_rsa.enc