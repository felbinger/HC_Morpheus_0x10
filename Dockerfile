FROM alpine
RUN apk --no-cache --no-progress upgrade && \
    apk --no-cache --no-progress add samba bash
    
ADD smb.conf /etc/samba/smb.conf
ADD share /share

EXPOSE 445

ADD healthcheck.sh /healthcheck.sh
HEALTHCHECK CMD /healthcheck.sh
CMD [ "bash", "-c", "smbd -FS -d 2 < /dev/null" ]
