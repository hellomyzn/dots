FROM python:3.11

USER root
RUN mkdir /opt/work

# poetry
# install path
ENV POETRY_HOME=/opt/poetry
RUN curl -sSL https://install.python-poetry.org | python3 && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    # not create virtual env since it's in a container 
    poetry config virtualenvs.create false
COPY ./src/pyproject.toml* ./src/poetry.lock* ./
# install packages through poetry if there is a pyproject.toml
RUN if [ -f pyproject.toml ]; then poetry install; fi


# middleware
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y \
        curl \
        sudo \
        vim && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# add user
ARG USER_NAME=myzn
ARG GROUP_NAME=myzn
ARG UID=1000
ARG GID=1000
RUN groupadd -g ${GID} ${GROUP_NAME} && \
    useradd -lm -s /bin/bash -u ${UID} -g ${GID} -G sudo ${USER_NAME} && \
    echo "${USER_NAME}:password" | chpasswd && \
    echo "${USER_NAME} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER ${USER_NAME}

# # If you want to just run one command, use below
# COPY --chown=${UID}:${GID} ./infra/docker/python/docker-entrypoint.sh /docker-entrypoint.sh
# RUN chmod 755 /docker-entrypoint.sh
# ENTRYPOINT [ "/docker-entrypoint.sh" ]
