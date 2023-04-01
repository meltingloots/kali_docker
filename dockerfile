FROM kalilinux/kali-rolling

RUN apt -y update && apt -y upgrade && apt -y autoremove && apt clean

RUN apt install metasploit-framework \
                curl \ 
                nmap \ 
                powersploit \ 
                python3-pip \
                python3 -y

COPY persist_db.sh /usr/local/bin/persist_db.sh
RUN chmod +x /usr/local/bin/persist_db.sh

CMD tail -f /dev/null
