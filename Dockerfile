FROM nginx:alpine

# Create a simple index.html file and remove the default index.html file
RUN \
  rm /usr/share/nginx/html/index.html && \
  echo '<html><body><h1>Hello from an example app!</h1></body></html>' > /usr/share/nginx/html/index.html



# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

