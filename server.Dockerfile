FROM docker.io/library/archlinux:latest
RUN pacman-key --init
RUN pacman -Syu --noconfirm nomad less

ARG USERNAME=nomad
ARG WORK_DIR=/work
ARG DATA_DIR=/opt/nomad

RUN useradd --create-home "${USERNAME}" && \
mkdir "${WORK_DIR}" && chown -R "${USERNAME}:${USERNAME}" "${WORK_DIR}" && \
mkdir --parent "${DATA_DIR}" && chown -R "${USERNAME}:${USERNAME}" "${DATA_DIR}"

USER ${USERNAME}
WORKDIR ${WORK_DIR}

CMD [ \
  "/usr/sbin/nomad", "agent", \
  "-server", \
  "-bind", "0.0.0.0", \
  "-data-dir", "/opt/nomad", \
  "-bootstrap-expect", "1" \
]
