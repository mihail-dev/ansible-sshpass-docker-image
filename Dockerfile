FROM ansible/centos7-ansible:stable

RUN curl -o /tmp/sshpass-1.05-1.el7.rf.x86_64.rpm "http://apt.sw.be/redhat/el7/en/x86_64/rpmforge/RPMS/sshpass-1.05-1.el7.rf.x86_64.rpm" && \
         rpm -Uvh /tmp/sshpass-1.05-1.el7.rf.x86_64.rpm && \
         rm /tmp/sshpass-1.05-1.el7.rf.x86_64.rpm

RUN yum install -y openssl

CMD bash