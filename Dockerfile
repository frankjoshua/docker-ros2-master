FROM frankjoshua/ros2

# ** [Optional] Uncomment this section to install additional packages. **
#
# USER root
# ENV DEBIAN_FRONTEND=noninteractive
# RUN apt-get update \
#    && apt-get -y install --no-install-recommends ros-galactic-desktop \
#    #
#    # Clean up
#    && apt-get autoremove -y \
#    && apt-get clean -y \
#    && rm -rf /var/lib/apt/lists/*
# ENV DEBIAN_FRONTEND=dialog

CMD ["ros2 topic list"]