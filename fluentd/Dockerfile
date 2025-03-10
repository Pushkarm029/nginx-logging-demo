FROM fluent/fluentd:v1.16-1

# Use root account to use apt
USER root

# Install dependencies and OpenSearch plugin
RUN apk add --no-cache --update --virtual .build-deps \
    sudo build-base ruby-dev \
 && sudo gem install fluent-plugin-opensearch \
 && sudo gem sources --clear-all \
 && apk del .build-deps \
 && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem

# Make sure fluentd has access to the config file
RUN mkdir -p /fluentd/etc /fluentd/plugins /fluentd/pos
RUN chmod -R 777 /fluentd/pos

# Switch back to fluent user
USER fluent 