pipeline {
  agent any

  tools {
    maven 'Maven 3.9.9'   // match your global Maven tool name
    jdk 'Java 17'         // match your global JDK tool name
  }

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/tagorech022/cloudbees-folder-plugin.git'
      }
    }

    stage('Validate') {
      steps {
        // Use full debug mode
        sh 'mvn clean validate -U -e -X'
      }
    }

    // Add more stages like Compile, Test, SonarQube, Docker etc. as needed
  }
}
