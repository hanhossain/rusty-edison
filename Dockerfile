# rusty-edison:1.40.0
FROM inteliotdevkit/intel-iot-yocto:latest

# get rust
RUN curl -O https://static.rust-lang.org/dist/rust-1.40.0-i686-unknown-linux-gnu.tar.gz
RUN tar xvzf rust-1.40.0-i686-unknown-linux-gnu.tar.gz

# install rust
RUN ./rust-1.40.0-i686-unknown-linux-gnu/install.sh

# cleanup
RUN rm -rf rust-1.40.0-i686-unknown-linux-gnu*
