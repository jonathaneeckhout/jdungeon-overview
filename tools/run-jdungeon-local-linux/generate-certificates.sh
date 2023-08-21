#!/bin/bash

# Change the following variables as needed
domain="localhost"
validity_days=365

# Generate private key and CSR
openssl req -new -newkey rsa:2048 -nodes -keyout "$domain.key" -out "$domain.csr" -subj "/C=US/ST=State/L=City/O=Organization/OU=Unit/CN=$domain/emailAddress=admin@$domain"

# Generate self-signed certificate
openssl x509 -req -days $validity_days -in "$domain.csr" -signkey "$domain.key" -out "$domain.crt"

# Optional: Display the generated certificate
openssl x509 -text -noout -in "$domain.crt"