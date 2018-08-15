FROM jekyll/jekyll

ENV JEKYLL_ENV=docker

RUN mkdir -p /srv/jekyll/

WORKDIR /srv/jekyll/

COPY . /srv/jekyll/

EXPOSE 4000 80 19000

CMD ["jekyll", "serve", "--watch", "--force_polling", "--incremental", "-H", "0.0.0.0", "-P", "4000"]