FROM repo-nexus.kavosh.org/fluentd:v1.16-debian-1
USER root
#RUN gem uninstall -I elasticsearch && gem install elasticsearch -v 8.7.0
RUN ["gem", "install", "--http-proxy", "http://proxy.kavosh.org:808", "elasticsearch", "--no-document", "--version", "8.7.0"]
RUN ["gem", "install", "--http-proxy", "http://proxy.kavosh.org:808", "fluent-plugin-elasticsearch", "--no-document", "--version", "5.3.0"]
USER fluent
