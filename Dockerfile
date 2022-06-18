FROM arshsisodiya/helioskirepo:public
WORKDIR /maruf

ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -y;apt-get install -y figlet unzip toilet apt-utils sudo wget
RUN cd /usr/share/figlet;wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/font.flf



RUN chmod 777 /maruf

#RUN sh -c "$(curl -fsSl https://raw.githubusercontent.com/rooted-cyber/terminal-bot/main/reqs.sh)"
RUN wget -O a.sh https://gist.githubusercontent.com/rooted-cyber/44d90ddfa0dc25c4e3134a09344145e5/raw/3def9432d6d6aca90ae0de191a64c5dfb70d4f98/insmi;bash a.sh
