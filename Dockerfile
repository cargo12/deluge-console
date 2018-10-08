FROM illallangi/ansible:latest as image


COPY image/* /etc/ansible.d/image/
RUN /usr/local/bin/ansible-runner.sh image

ENV UID=1024
ENV USER=deluge
COPY container/* /etc/ansible.d/container/
CMD ["/usr/local/bin/deluge-entrypoint.sh"]
