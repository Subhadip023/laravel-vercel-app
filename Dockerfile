# Use an official PHP image with FPM
FROM php:8.2-fpm

# Install system dependencies and PostgreSQL extensions
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    git \
    curl \
    supervisor \
    libpq-dev \
    nodejs \
    npm && \
    docker-php-ext-install pdo pdo_pgsql

# Install Composer globally
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set the working directory
WORKDIR /var/www

# Copy application files
COPY . .

# Install frontend dependencies and build assets
COPY package.json package-lock.json /var/www/
RUN npm install
RUN npm run build

# Install PHP dependencies
RUN composer install --optimize-autoloader --no-dev

# Set file permissions
RUN chown -R www-data:www-data /var/www/storage /var/www/bootstrap/cache

# Expose port 8000 for the Laravel app
EXPOSE 8000

# Start Laravel development server
CMD ["composer", "run", "dev", "--host=0.0.0.0", "--port=8000"]
