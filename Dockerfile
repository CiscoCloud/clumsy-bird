FROM mikejihbe/nodejs-ssh:latest
EXPOSE 3000
WORKDIR /app
COPY . /app
RUN chmod +x .shipped/*
RUN [".shipped/build"]
CMD .shipped/run
