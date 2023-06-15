if [ "$(docker ps -aq -f name=mongo-chatui)" ]; then
    # The container exists
    if [ ! "$(docker ps -q -f name=mongo-chatui)" ]; then
        # The container is not running, start it
        docker start mongo-chatui
    fi
else
    # The container does not exist, create and start it
    docker run -d -p 27017:27017 --name mongo-chatui mongo:latest
fi
npm install
npm run preview
