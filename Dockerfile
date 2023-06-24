################################
# Build app
################################
FROM alpine AS build
WORKDIR /source

# Tar filename.
ENV TF=noip.tar.gz
ENV SOURCE_URL=https://www.noip.com/client/linux/noip-duc-linux.tar.gz

# Download the source code tar.
RUN wget -O $TF $SOURCE_URL

# Extract the tar.
RUN tar -xzf $TF

# Since the tar only contains one folder with a name similar to "noip-2.1.9-1"
# move everything into the current dir.
RUN mv noip-*/* ./

# Install make
RUN apk add g++
RUN apk add make

# Make the program.
RUN make

################################
# Copy to image
################################
FROM alpine

COPY --from=build /source/noip2 /bin

ENTRYPOINT ["noip2"]
