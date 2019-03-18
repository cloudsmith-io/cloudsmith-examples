FROM alpine:3.9.2

RUN apk add alpine-sdk

RUN adduser -S circleci
RUN addgroup circleci abuild
RUN addgroup circleci wheel
RUN mkdir -p /var/cache/distfiles
RUN chmod a+w /var/cache/distfiles
RUN sed -e 's/# %wheel ALL=(ALL) NOPASSWD: ALL/%wheel ALL=(ALL) NOPASSWD: ALL/g' -i /etc/sudoers

WORKDIR /usr/build
COPY . .

RUN chown -R circleci .
USER circleci
