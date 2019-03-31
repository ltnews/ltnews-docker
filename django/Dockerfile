FROM python:latest

# To enable logging
ENV PYTHONUNBUFFERED 1

# Create server directory
RUN mkdir /code
WORKDIR /code

# Install the server dependencies
COPY ltnews-backend/requirements.txt /code/
RUN pip install -r requirements.txt
COPY ltnews-backend/ .

# Expose port 8000 in the container
EXPOSE 8000

# Copy the entrypoint
COPY entrypoint.sh /etc/entrypoint.sh
ENTRYPOINT [ "/etc/entrypoint.sh" ]