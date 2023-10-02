# Load balancer

## DevOps | SysAdmin

- In this project, I continued to build up the configuration of the web server
issued in project 0x0B. the issued two additional servers, one to replicate
the Nginx configuration of my original server, and another to set up an HAproxy
load balancer on to manage both web servers.

## Tasks :

* **0. Double the number of webservers**
- Bash script that installs and configures Nginx on a server with a custom HTTP response header.
  * The name of the HTTP header is `X-Served-By`.
  * The value of the HTTP header is the hostname of the server Nginx is running on.

* **1. Install your load balancer**
- Bash script that installs and configures HAproxy version 1.5 on a server.
  * Configure HAproxy so that it send traffic to web-01 and web-02.
  * Distribute requests using a roundrobin algorithm.

* **2. Add a custom HTTP header with Puppet**
- as in task #0, we’d like you to automate the task of creating a custom HTTP header response, but with Puppet.
  * The value of the custom HTTP header must be the hostname of the server Nginx is running on.
  * Write 2-puppet_custom_http_response_header.pp so that it configures a brand new Ubuntu machine to the requirements asked in this task.

## 📝 License

Copyright © 2023 [Mahmoud Eid](https://github.com/Mado007).<br />
This project is [Holberton School](https://github.com/holbertonschool) | [Alx Africa](https://www.alxafrica.com/)  licensed.

---

_This README was generated with ❤️ by [Mahmoud Eid](https://github.com/Mado007)_
