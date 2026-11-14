FROM openclaw/openclaw:latest

USER root
COPY openclaw.json /home/node/.openclaw/openclaw.json
RUN chown -R 1000:1000 /home/node/.openclaw

USER 1000:1000
EXPOSE 18789
ENTRYPOINT ["tini", "-s", "--"]
CMD ["npx", "openclaw", "gateway", "run", "--allow-unconfigured", "--bind", "lan", "--port", "18789"]
