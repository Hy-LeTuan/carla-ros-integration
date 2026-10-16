FROM osrf/ros:kilted-desktop
SHELL ["/bin/bash", "-c"]
RUN apt-get update && apt-get install -y \
    curl \
    python3-colcon-common-extensions \
    python3-rosdep \
    git \
    vim \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /workspace
RUN echo "source /opt/ros/kilted/setup.bash" >> /root/.bashrc
