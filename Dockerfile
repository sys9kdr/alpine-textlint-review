FROM node:lts-alpine

RUN npm install --global\
    textlint \
    textlint-rule-preset-ja-technical-writing \
    textlint-rule-preset-jtf-style \
    textlint-rule-preset-ja-spacing \
    textlint-rule-spellcheck-tech-word \
    textlint-rule-prh \
    textlint-plugin-review

WORKDIR /workdir

ENTRYPOINT ["textlint"]
CMD ["--version"]
