bel = "worker-${UUID.randomUUID().toString()}"

podTemplate(label: label,
containers: [
  containerTemplate(name: 'maven', image: 'kubeworks/mvn:dev', command: 'cat', ttyEnabled: true)
],
volumes: [
  hostPathVolume(mountPath: '/root/.m2', hostPath: '/home/vagrant/.m2'),
  hostPathVolume(mountPath: '/root/.docker', hostPath: '/home/vagrant/.docker'),
  hostPathVolume(mountPath: '/var/run/docker.sock', hostPath: '/var/run/docker.sock')
])

{
  node(label) {

    stage('git-clone') {
      git 'http://192.168.33.33:30079/scm/demo/samples.git'
    }

    stage('build') {
      try {
        container('maven') {

          //  mvn compile com.google.cloud.tools:jib-maven-plugin:2.7.1:dockerBuild

          sh """
            cd "${env.WORKSPACE}/apps/java-maven"
            echo "Starting Maven JIB build"
            echo
            mvn compile jib:build -Djib.allowInsecureRegistries=true -DsendCredentialsOverHttp=true -Djib.from.image=192.168.33.33:30005/distroless/java -Dimage=192.168.33.33:30005/demo-app:${env.BUILD_TAG}
            """
        }
      }
      catch (exc) {
        println "Failed to test - ${currentBuild.fullDisplayName}"
        throw(exc)
      }
    }
  }
}

