FROM node:20

# Set working directory
WORKDIR /app

# Install Java
RUN apt-get update && apt-get install -y openjdk-18-jdk wget

# Install Salesforce CLI
RUN wget https://developer.salesforce.com/media/salesforce-cli/sfdx/channels/stable/sfdx-linux-x64.tar.xz \
    && mkdir /sfdx \
    && tar xJf sfdx-linux-x64.tar.xz -C /sfdx --strip-components 1 \
    && ln -s /sfdx/bin/sfdx /usr/local/bin/sfdx \
    && sfdx --version

# Copy JAR file and entrypoint script
COPY ../sfdxlean.jar /app/sfdxlean.jar

# Copy entry script
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]