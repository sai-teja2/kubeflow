FROM python:3.7

# Install any additional Python dependencies
RUN python3 -m pip install --no-cache-dir keras

# Copy your Python script into the container
COPY ./test.py /pipelines/component/src/program.py

# Set the entrypoint
ENTRYPOINT ["python3", "/pipelines/component/src/program.py"]
