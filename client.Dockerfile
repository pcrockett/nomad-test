FROM docker.io/library/archlinux:latest
RUN pacman-key --init
RUN pacman -Syu --noconfirm nomad less

ARG WORK_DIR=/work
ARG DATA_DIR=/opt/nomad

RUN mkdir "${WORK_DIR}" "${DATA_DIR}"
WORKDIR ${WORK_DIR}

CMD [ \
  "/usr/sbin/nomad", "agent", \
  "-client", \
  "-bind", "0.0.0.0", \
  "-data-dir", "/opt/nomad", \
  "-servers", "server:4647" \
]
