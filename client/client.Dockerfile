FROM docker.io/library/archlinux:latest
RUN pacman-key --init
RUN pacman -Syu --noconfirm nomad less

ARG WORK_DIR=/work
ARG DATA_DIR=/opt/nomad

RUN mkdir "${WORK_DIR}" "${DATA_DIR}"
WORKDIR ${WORK_DIR}
COPY --chown=root:root client.conf.hcl .

CMD ["/usr/sbin/nomad", "agent", "-config=client.conf.hcl"]
