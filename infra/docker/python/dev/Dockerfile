FROM python:3.11

# env
ENV PYTHONPATH=/opt/work
ENV DOCSPATH=/opt/docs
ENV POETRY_HOME=/opt/poetry
ENV PIP_HOME=/opt/pip
ENV SSH_HOME=/opt/ssh
ENV PATH /home/${USER_NAME}/.local/bin/$PATH

# middleware
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y \
        curl \
        iputils-ping \
        net-tools \
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

# make dirs
RUN mkdir -p ${PYTHONPATH} && chown -R ${UID}:${GID} ${PYTHONPATH} && \
    mkdir -p ${DOCSPATH} && chown -R ${UID}:${GID} ${DOCSPATH} && \
    mkdir -p ${POETRY_HOME} && chown -R ${UID}:${GID} ${POETRY_HOME} && \
    mkdir -p ${SSH_HOME} && chown -R ${UID}:${GID} ${SSH_HOME} && \
    mkdir -p ${PIP_HOME} && chown -R ${UID}:${GID} ${PIP_HOME}

# copy files
COPY --chown=${UID}:${GID} ./infra/docker/python/docker-entrypoint.sh /docker-entrypoint.sh
COPY --chown=${UID}:${GID} ./docs/ ${DOCSPATH}
COPY --chown=${UID}:${GID} ./src/requirements.txt ${PIP_HOME}
COPY --chown=${UID}:${GID} ./infra/docker/ssh-stub/ssh/id_rsa ${SSH_HOME}
COPY --chown=${UID}:${GID} ./src/requirements-dev.txt ${PIP_HOME}
RUN chmod 755 /docker-entrypoint.sh

# poetry
# install path
RUN curl -sSL https://install.python-poetry.org | python3 && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    # not create virtual env since it's in a container
    poetry config virtualenvs.create false
# install packages through poetry if there is a pyproject.toml
COPY --chown=${UID}:${GID} ./src/pyproject.toml* ./src/poetry.lock* ${POETRY_HOME}
RUN if [ -f ${POETRY_HOME}/pyproject.toml ]; then poetry install --directory=${POETRY_HOME}; fi

# change exec user
USER ${USER_NAME}

# # pip install
# WORKDIR /opt/work
# RUN python -m pip install  --no-cache-dir -r ${PIP_HOME}/requirements.txt --upgrade --user pip && \
#     pip install --no-cache-dir -r ${PIP_HOME}/requirements.txt
# RUN python -m pip install  --no-cache-dir -r ${PIP_HOME}/requirements-dev.txt --upgrade --user pip && \
#     pip install --no-cache-dir -r ${PIP_HOME}/requirements-dev.txt

# # If you want to just run one command, use below
# ENTRYPOINT [ "/docker-entrypoint.sh" ]
