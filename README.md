#Решение для пропуска трафика любого контейнера через socks/vpn  

пример для socks5  

как использовать:  
в docker-compose.yml указываете переменные  
    environment:  
      - VPN_USER=xxx  
      - VPN_PASS=xxx  
      - VPN_ADDRESS=1.1.1.1  

и заменяете контейнер payload на свой.  


