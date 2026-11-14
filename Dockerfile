FROM openclaw/openclaw:latest

USER root
COPY openclaw.json /home/node/.openclaw/openclaw.json
RUN chown -R 1000:1000 /home/node/.openclaw

USER 1000:1000
EXPOSE 18789
CMD ["openclaw", "gateway", "run"]
