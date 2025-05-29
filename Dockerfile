# Use official PHP Apache base image
FROM php:8.2-apache

# Copy current directory to Apache web root
COPY . /var/www/html/

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html

# Enable needed Apache modules (optional)
RUN docker-php-ext-install mysqli

# Expose port (Render uses PORT env var automatically)
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
