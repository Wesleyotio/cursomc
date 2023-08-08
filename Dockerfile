

FROM maven:3.6.3-jdk-11


COPY . /app
COPY --chown=www:www . /app

# FROM alpine:3.18

# # SEt version of the java and maven
# ENV JAVA_VERSION=11
# ENV MAVEN_VERSION=3.6.3

# RUN apk update && apk add --no-cache openjdk${JAVA_VERSION} \
#     vim \
#     unzip \
#     git \
#     curl \
#     nginx \
#     nano \
#     wget


# ENV JAVA_HOME=/usr/lib/jvm/java-${JAVA_VERSION}-openjdk
# ENV PATH=$PATH:$JAVA_HOME/bin

# RUN apk add --no-cache curl
# RUN mkdir -p /opt/maven
# RUN curl -fsSL https://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz | tar -xzC /opt/maven --strip-components=1
# ENV MAVEN_HOME=/opt/maven
# ENV PATH=$PATH:$MAVEN_HOME/bin

# # Set working directory
# WORKDIR /var/www

# # # Clear cache
# # RUN apt-get clean && rm -rf /var/lib/apt/lists/*


# # # Install JDK binaries
# # RUN wget https://download.java.net/openjdk/jdk11.0.0.1/ri/openjdk-11.0.0.1_linux-x64_bin.tar.gz

# # RUN tar -xvf openjdk-11.0.0.1_linux-x64_bin.tar.gz

# # RUN mv jdk-11.0.0.1 /opt/

# # RUN echo "JAVA_HOME='/opt/jdk-11.0.0.1'" >> /root/.profile 
# # RUN echo 'PATH="$JAVA_HOME/bin:$PATH"' >> /root/.profile 
# # RUN echo "export PATH" >> /root/.profile

# # # Install Maven
# # RUN wget https://dlcdn.apache.org/maven/maven-3/3.9.3/binaries/apache-maven-3.9.3-bin.tar.gz
# # RUN tar -xvf apache-maven-3.9.3-bin.tar.gz
# # RUN mv apache-maven-3.9.3 /opt/


# # RUN echo "M2_HOME='/opt/apache-maven-3.6.3'" >> /root/.profile 
# # RUN echo 'PATH="$M2_HOME/bin:$PATH"' >> /root/.profile 
# # RUN echo "export PATH" >> /root/.profile

# # Add user for Spring/Java application
# # RUN groupadd -g 1000 www
# # RUN useradd -u 1000 -ms /bin/bash -g www www

# # Copy existing application directory contents
# COPY . /var/www

# # Copy existing application directory permissions
# COPY --chown=www:www . /var/www


# CMD ["mvn", "clean", "install"]
