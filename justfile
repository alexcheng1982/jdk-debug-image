triggerCoreDump IMAGE:
    docker run --rm -it \
    --user root --privileged \
    --pid=host \
    -v ./sample-code:/usr/java \
    -v ./core_dump:/core_dump \
    -w /usr/java \
    {{IMAGE}} sh run-sample.sh

triggerCoreDumpInDebugImage:
    just triggerCoreDump jdk8-debug

triggerCoreDumpInNormalImage:
    just triggerCoreDump eclipse-temurin:8u462-b08-jdk

runGdb:
    docker run --rm -it \
    -v ./core_dump:/core_dump \
    -w /core_dump \
    jdk8-debug bash