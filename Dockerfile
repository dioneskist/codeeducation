FROM golang
WORKDIR /src
COPY hello.go ./
RUN go build hello.go
CMD [ "./hello" ]

FROM scratch
COPY --from=0 /src/hello ./
CMD ["./hello"]  