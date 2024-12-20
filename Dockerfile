# Use arm64 architecture for the base image
# Dockerfile
FROM --platform=linux/arm64 hxsoong/kylin:v10-sp3

# 安装依赖项
RUN yum -y update && \
    yum clean all && \
    yum groupinstall -y 'Development Tools' && \
    yum install -y cmake gcc gcc-c++ libaio-devel ncurses-devel bison wget git make openssl-devel boost-devel libtirpc libtirpc-devel perl zlib-devel libcurl-devel pam-devel libevent-devel rpcgen

# 设置工作目录
WORKDIR /workspace
