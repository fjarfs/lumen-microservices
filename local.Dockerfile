FROM dxtrasia/docker-project:app

RUN composer install \
    --ignore-platform-reqs \
    --no-interaction \
    --no-plugins \
    --no-scripts \
    --prefer-dist

RUN chmod -R 777 /app/storage 
RUN composer dump-autoload