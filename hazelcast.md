

Command
ENV HZ_HOME=/opt/hazelcast CLASSPATH_DEFAULT=/opt/hazelcast/* JAVA_OPTS_DEFAULT=-Djava.net.preferIPv4Stack=true -XX:MaxRAMPercentage=80.0 -XX:MaxGCPauseMillis=5 PROMETHEUS_PORT= PROMETHEUS_CONFIG=/opt/hazelcast/config/jmx_agent_config.yaml CLASSPATH= JAVA_OPTS= HAZELCAST_CONFIG=config/hazelcast-docker.xml LANG=C.UTF-8 PATH=/opt/hazelcast/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

EXPOSE map[5701/tcp:{}]

# Runtime variables
    JAVA_OPTS_DEFAULT="-Djava.net.preferIPv4Stack=true -XX:MaxRAMPercentage=80.0 -XX:MaxGCPauseMillis=5" \
    PROMETHEUS_CONFIG="${HZ_HOME}/config/jmx_agent_config.yaml" \
    JAVA_OPTS="" \
    HAZELCAST_CONFIG=config/hazelcast-docker.xml

COPY *.jar get-hz-dist-zip.sh hazelcast-*.zip /opt/hazelcast/ # buildkit