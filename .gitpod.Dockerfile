FROM gitpod/workspace-python-3.12

ENV TRIGGER_REBUILD 2

USER root

# Install necessary tools
RUN sudo apt-get update && \
    sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Install Docker
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
    sudo apt-get update && \
    DEBIAN_FRONTEND=noninteractive sudo apt-get install -o Dpkg::Options::="--force-confnew" -y docker-ce && \
    sudo rm /etc/apt/sources.list.d/archive_uri-https_download_docker_com_linux_ubuntu-jammy.list


COPY --chown=gitpod content /home/gitpod/cicd-exercises

# Add Gitpod user to the Docker group
RUN sudo usermod -aG docker gitpod

# Install Python development tools
RUN sudo apt-get install -y python3-pip
RUN pip3 install flake8 pytest

# Install GitHub CLI using official instructions
RUN type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y) && \
    sudo mkdir -p -m 755 /etc/apt/keyrings && \
    wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null && \
    sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null && \
    sudo apt update && \
    sudo apt install gh -y

# Hide solutions
RUN rm -rf /home/gitpod/cicd-exercises/solutions 

USER gitpod

CMD ["bash"]

