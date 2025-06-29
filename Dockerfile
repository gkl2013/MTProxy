FROM alpine:latest

# 安装依赖
RUN apk add --no-cache curl python3 py3-pip && \
    pip3 install https://github.com/9seconds/mtg/archive/master.zip

# 生成密钥并启动服务
CMD ["sh", "-c", "mtg run $(mtg generate-secret -c google.com tls) -b 0.0.0.0:443"]
