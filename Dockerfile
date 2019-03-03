FROM ubuntu:18.04
LABEL maintainer="anantadwi13 <anantadwi13@yahoo.com>"
COPY startup.sh /root/
RUN apt update \
	&& apt install -y curl \
	&& apt install -y lsb-release \
	&& apt install -y gnupg\
	&& cd ~/ \
	&& curl -O http://vestacp.com/pub/vst-install.sh \
	&& sed -i "s/bash vst-install-\$type.sh \$\*/\#bash vst-install-\$type.sh \$\*/g" ./vst-install.sh \
	&& bash vst-install.sh \
	&& sed -i "s/check_result \$? \"vsftpd start failed\"/\#check_result \$? \"vsftpd start failed\"/g" ./vst-install-ubuntu.sh \
	&& bash vst-install-ubuntu.sh --nginx yes --apache yes --phpfpm no --named yes --remi yes --vsftpd yes --proftpd no --iptables yes --fail2ban yes --quota no --exim yes --dovecot yes --spamassassin yes --clamav no --softaculous yes --mysql yes --postgresql no --password 123456 -y no --force
CMD /bin/bash ~/startup.sh && /bin/bash
