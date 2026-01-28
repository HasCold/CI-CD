# Alpine images are light weight.
FROM node:22-alpine 

WORKDIR /app
COPY package*.json ./
RUN npm install

COPY . .

# expose port
EXPOSE 8000

CMD [ "node", "index"]

# command for running the container 
# docker run -it --rm -p 8000:8000 cicd-node-api
# -it -->> interactive terminal 
# --rm -->> Automatically deletes the container when it stops
