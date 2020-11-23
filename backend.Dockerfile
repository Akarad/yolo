FROM alpine:latest

LABEL maintainer="Diana Akara <dianaakara@gmail.com>"
LABEL build_date="2020-11-23"

ARG BUILD_DATE

# Labels
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="Yolomy Backend"

LABEL org.label-schema.description="Yolomy website mongodb backend application"

RUN echo "Build Date: $BUILD_DATE"
LABEL org.label-schema.build-date=$BUILD_DATE
RUN apk update && apk add nodejs nodejs-npm
COPY backend /backend
WORKDIR /backend
RUN npm install

EXPOSE 5000
CMD ["npm", "start" ] 