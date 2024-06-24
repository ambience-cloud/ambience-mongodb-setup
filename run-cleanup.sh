echo remove Ambience
docker stop elixir-ambience
docker rm elixir-ambience

echo remove MongoDB
docker stop elixir-mongo
docker rm elixir-mongo
echo remove MongoDB volume
docker volume rm elixirmongo