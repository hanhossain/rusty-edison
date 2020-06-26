# rusty-edison:1.44.1
FROM inteliotdevkit/intel-iot-yocto:latest

ARG rust_version=1.44.1
ARG target_triple=i686-unknown-linux-gnu

# get rust
RUN curl -O https://static.rust-lang.org/dist/rust-${rust_version}-${target_triple}.tar.gz
RUN tar xvzf rust-${rust_version}-${target_triple}.tar.gz

# install rust
RUN ./rust-${rust_version}-${target_triple}/install.sh

# cleanup
RUN rm -rf rust-${rust_version}-${target_triple}*
