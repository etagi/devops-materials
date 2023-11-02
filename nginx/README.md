# Nginx

Source : https://youtu.be/FziEhnIpln4?si=vd2qqgRI7ImZ80dD

To install nginx on ubuntu

```sh
sudo apt install -y nginx
```

Default port on nginx is : 80

Default folder is

- /var/www/html
- /etc/nginx
- /etc/nginx/conf.d/\<app.domain.com.conf>
- /etc/nginx/sites-available/\<app.domain.com>

To create a soft link

```sh
sudo ln -s /etc/nginx/sites-available/app.domain.com /etc/nginx/sites-enabled/
```

To check our syntax of nginx conf files

```sh
sudo nginx -t
```

To check all nginx conf files that is recognized

```sh
sudo nginx -T
```

To restart the nginx, reload is prefered over restart

```sh
sudo systemctl restart nginx
sudo systemctl reload nginx
```

To create username and password

```sh
sudo sh -c "echo -n 'aravind: >> /etc/nginx/.htpasswd"
sudo sh -c "openssl passwd -apr1 >> /etc/nginx/.htpasswd"
```

To give more weightage to app running at port 3000

```
upstream backend {
    # for loadbalancing between the ports using round robin
    server localhost:3000 weight=3;     # For every 4 requests this handles 3 requests
    server localhost:3001;
}

server {
    listen 80;

    server_name api.domain.com;

    location / {
        add_header Cache-control no-store;
        proxy_pass http://backend;
    }
}
```

App running at port 3000 will be default and app running at port 3001 will be come to effect when other is down

```
upstream backend {
    # for loadbalancing between the ports using round robin
    server localhost:3000;               # This will be default server
    server localhost:3001 backup;        # This will be served if other server is down
}

server {
    listen 80;

    server_name api.domain.com;

    location / {
        add_header Cache-control no-store;
        proxy_pass http://backend;
    }
}
```

For certificate : https://certbot.eff.org/
It automatically edits conf file and adds certificates

```sh
sudo apt-get update
sudo apt-get install -y snap
sudo apt-get remove certbot
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot

# To install certificate
sudo certbot --nginx

# To get certificate only
# sudo certbot certonly --nginx
```

The command to renew certbot is installed in one of the following locations:

- /etc/crontab/
- /etc/cron._/_
- systemctl list-timer

```sh
sudo certbot renew --dry-run
```
