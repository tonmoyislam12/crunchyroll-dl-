curl -L https://github.com/crunchy-labs/crunchy-cli/releases/download/v2.3.6/crunchy-v2.3.6_linux \
    -o /usr/local/bin/crunchy && chmod +x /usr/local/bin/crunchy
crunchy --etp-rt $COOKIE
crunchy archive https://www.crunchyroll.com/series/GY8VEQ95Y/darling-in-the-franxx
