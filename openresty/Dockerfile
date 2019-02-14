FROM centos

WORKDIR /usr/local/openresty

RUN yum-config-manager --add-repo https://openresty.org/yum/centos/OpenResty.repo && \
    yum install -y openresty unzip gcc make openssl && \
    curl -O http://luarocks.github.io/luarocks/releases/luarocks-3.0.4.tar.gz && \
    tar xzf luarocks-3.0.4.tar.gz && \
    cd luarocks-3.0.4 && \
    ./configure --prefix=/usr/local/openresty/luajit/ --with-lua=/usr/local/openresty/luajit/ --lua-suffix=jit --with-lua-include=/usr/local/openresty/luajit/include/luajit-2.1 && \
    make && make install && \
    cd /usr/local/openresty && \
    rm -rf luarocks-3.0.4 && \
    ln -s /usr/local/openresty/luajit/bin/luarocks /usr/local/bin/ && \
    luarocks install lua-resty-auto-ssl
    
ADD certs.d nginx.conf /usr/local/openresty/nginx/conf/

CMD ["openresty", "-g", "daemon off;"]