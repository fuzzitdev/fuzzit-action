FROM golang:1.12

LABEL version="1.0.0"
LABEL repository="https://github.com/fuzzitdev/fuzzit-action"
LABEL homepage="https://github.com/fuzzitdev/fuzzit-action"

LABEL "com.github.actions.name"="Fuzzit Action"
LABEL "com.github.actions.description"="A Github Action to integrate continuous fuzzing via Fuzzit"
LABEL "com.github.actions.icon"="check-square"
LABEL "com.github.actions.color"="blue"

ENV GO111MODULE=on

RUN go get github.com/fuzzitdev/fuzzit/v2

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

