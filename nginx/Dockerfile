FROM nginx

WORKDIR /
COPY ./fill_variables.sh /fill_variables.sh
RUN chmod +x /fill_variables.sh

COPY ./conf.d /etc/nginx/conf.d

ENTRYPOINT [ "/fill_variables.sh" ]
