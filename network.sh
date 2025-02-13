#!/bin/bash

# Periksa apakah file .env ada
if [ ! -f .env ]; then
    echo "Error: File .env tidak ditemukan!"
    exit 1
fi

# Load variabel dari file .env
export $(grep PROJECT_NAME .env | xargs)

# Periksa apakah variabel PROJECT_NAME sudah didefinisikan
if [ -z "$PROJECT_NAME" ]; then
    echo "Error: Variabel PROJECT_NAME tidak ditemukan di .env!"
    exit 1
fi

# Buat Docker network
NETWORK_NAME="${PROJECT_NAME}-bridge"

# Periksa apakah network sudah ada
if docker network ls | grep -q "$NETWORK_NAME"; then
    echo "Docker network '$NETWORK_NAME' sudah ada."
else
    echo "Membuat Docker network: $NETWORK_NAME..."
    docker network create "$NETWORK_NAME"
    echo "Docker network '$NETWORK_NAME' berhasil dibuat!"
fi
