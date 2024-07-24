# Use the latest foundry image
FROM ghcr.io/foundry-rs/foundry:nightly-5af9d16ecb620192d4fe5ae61d33e429b7f5aff3

# Copy our source code into the container
WORKDIR /app

# Build and test the source code
COPY . .
RUN forge build
RUN forge test
