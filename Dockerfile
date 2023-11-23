# Gunakan image node.js sebagai base image
FROM node:18

# Setel direktori kerja di dalam kontainer
WORKDIR /app

# Salin package.json dan package-lock.json untuk instalasi dependensi
COPY package*.json ./

# Instal dependensi
RUN yarn

# Salin seluruh proyek
COPY . .

# Ekspor port yang diperlukan (jika aplikasi menggunakan port tertentu)
EXPOSE 3000

# Perintah untuk menjalankan aplikasi ketika kontainer dijalankan
CMD ["yarn", "start"]
