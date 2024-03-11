# Import necessary base images
FROM runpod/stable-diffusion:comfy-ui-5.0.0

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Set working directory and environment variables
ENV SHELL=/bin/bash
ENV PYTHONUNBUFFERED=1
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir /workspace

WORKDIR /