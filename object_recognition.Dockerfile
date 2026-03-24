# Base image with CUDA 13 + cuDNN on Ubuntu 22.04
FROM nvidia/cuda:13.0.0-cudnn-devel-ubuntu22.04

# Avoid prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Install Python 3.10 and essentials
RUN apt update && apt install -y \
    python3.10 \
    python3.10-venv \
    python3.10-distutils \
    python3-pip \
    curl \
    libglib2.0-0 \
    libgl1 \

# Set Python 3.10 as default
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.10 1

# Upgrade pip
RUN python -m pip install --upgrade pip

# Set working directory
WORKDIR /workspace

RUN pip install torch torchvision setuptools<81 jupyter super-gradient

WORKDIR /workspace
RUN ln -s /app app
# Default command
CMD ["/bin/bash"]
