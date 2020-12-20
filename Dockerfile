FROM python:3.7

ENV AMQP_QUEUE job_scene_detection

RUN apt-get update -y
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN pip install scenedetect[opencv]

COPY --from=mediacloudai/rs_command_line_worker:0.2.1-ubuntu \
    /usr/bin/command_line_worker \
    /usr/bin/command_line_worker

CMD command_line_worker
