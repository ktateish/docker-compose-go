FROM skame/docker-compose

RUN curl -Lo go.tgz https://storage.googleapis.com/golang/go1.8.1.linux-amd64.tar.gz \
	&& tar zxvf go.tgz -C /usr/local \
	&& rm -rf go.tgz /usr/local/go/src /usr/local/go/test \
	&& echo 'PATH=/usr/local/go/bin:$PATH' > /etc/profile.d/go.sh
