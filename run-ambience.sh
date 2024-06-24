docker pull elixirtech/elixir-ambience:latest

 mongopasswd=`cat mongo-user.pass`

mongourl="mongodb://ambienceUser:$mongopasswd@host.docker.internal:27017"

#docker stop elixir-ambience
#docker rm elixir-ambience

docker pull elixirtech/elixir-ambience:latest

docker run -d -it --name elixir-ambience \
  -e externalprotocol=http: \
  -e externalhost=localhost \
  -e externalport=1740 \
  -e mongoconfigload=true \
  -e mongourl=$mongourl \
  -p 1740:1740 \
  elixirtech/elixir-ambience:latest
