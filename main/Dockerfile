FROM ubuntu:22.04
RUN apt update && apt upgrade -y
RUN apt install curl net-tools -y
RUN curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh
RUN chmod a+x setup-repos.sh
RUN echo y | ./setup-repos.sh
RUN apt update && apt install webmin -y
COPY . .
RUN chmod a+x entrypoint.sh
ENTRYPOINT ["bash" , "entrypoint.sh"]
