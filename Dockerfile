# lightweight node
FROM node:20-alpine

# create app dir
WORKDIR /app

# copy site
COPY index.html .

# install tiny static server
RUN npm install -g serve

# expose ecs port
EXPOSE 5000

# run static server
CMD ["serve", "-s", ".", "-l", "5000"]
