# Static site served by nginx as a non-root user on port 8080.
# Pin the tag to a current version from Docker Hub (nginxinc/nginx-unprivileged).
# If Docker Hub rate limits your CodeBuild runs, mirror the base image to your own ECR.
FROM nginxinc/nginx-unprivileged:alpine3.24-perl

COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy only the site files. Add other assets here if the site uses them,
# for example: COPY css/ /usr/share/nginx/html/css/
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 8080
