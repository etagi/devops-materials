server {
    listen 80;
    server_name app.domain.com; # Replace with your domain name or server IP

    location / {
        proxy_pass http://127.0.0.1:3000; # Point to your application's port
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}
