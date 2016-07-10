FROM alpine:3.4

# This right here is where we are gonna work. Dur.
WORKDIR /playbook

# Set up our base environment
RUN apk add --no-cache ansible ca-certificates

CMD ["ansible-playbook", "test.yaml"]

# Uncomment this line if boot2docker or something
#ADD playbook /playbook