FROM python

ENV MODEL_DIR=/models

RUN mkdir -p $MODEL_DIR
WORKDIR $MODEL_DIR

COPY . $MODEL_DIR

RUN pip install huggingface_hub \
    && python ./model_download.py
