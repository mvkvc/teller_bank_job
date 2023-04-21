FROM ghcr.io/livebook-dev/livebook:latest-cuda11.8

ENV LIVEBOOK_APP_SERVICE_NAME "🐳 Hugging Face - $SPACE_TITLE"
ENV LIVEBOOK_APP_SERVICE_URL "https://huggingface.co/spaces/$SPACE_AUTHOR_NAME/$SPACE_REPO_NAME"
ENV LIVEBOOK_UPDATE_INSTRUCTIONS_URL "https://livebook.dev"
ENV LIVEBOOK_WITHIN_IFRAME "true"
ENV LIVEBOOK_APPS_PATH "/public-apps"
ENV LIVEBOOK_DATA_PATH "/data"
ENV LIVEBOOK_PORT 7860

EXPOSE 7860
USER root
COPY nbs/ /public-apps
RUN mkdir -p /data
RUN chmod 777 /data
