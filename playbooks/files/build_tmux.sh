docker build -f tmux.Dockerfile -t temp_image . && \
cid=$(docker create temp_image) && \
docker cp "$cid":/tmp/tmux/tmux ./tmux && \
docker rm "$cid" && \
docker rmi temp_image
