# Gunakan image Node.js sebagai base
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json dan package-lock.json (jika ada)
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm install

# Copy semua file ke dalam container
COPY . .

# Build aplikasi untuk production (opsional, sesuaikan jika perlu)
RUN npm run build

# Expose port yang digunakan oleh webpack-dev-server
EXPOSE 8080

# Jalankan aplikasi dalam mode development
CMD ["npm", "run", "start"]
