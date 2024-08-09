# Use an official Redis image as a base image
FROM redis:alpine

WORKDIR /usr/src/app
COPY deploymentfile.yaml ./
COPY servicefile.yaml ./
# Expose the port that Redis runs on
EXPOSE 6379

# Command to run Redis server
CMD ["redis-server"]
