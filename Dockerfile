FROM alpine

# Instalacja dodatkowych narzędzi, które będą potrzebne do uruchomienia skryptu
RUN apk add --no-cache bash bc

# Dodanie pliku skryptu i nadanie mu uprawnień do wykonania
COPY pluto.sh /
RUN chmod +x /pluto.sh

# Definicja punktu montowania wolumenu
VOLUME /logi

CMD ["/pluto.sh"]
