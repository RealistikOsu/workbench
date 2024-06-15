FROM nginx

WORKDIR /
COPY ./fill_variables.sh /fill_variables.sh
CMD chmod +x /fill_variables.sh

COPY ./sites-enabled /etc/nginx/sites-enabled

ENTRYPOINT [ "/fill_variables.sh" ]
