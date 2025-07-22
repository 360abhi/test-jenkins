pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
      dir '.'
    }
  }

  stages {
    stage('Run Test Script') {
      steps {
        sh 'chmod +x test.sh'
        sh './test.sh'
      }
    }

    stage('Archive Result') {
      steps {
        sh 'echo "This is a test log." > result.txt'
        archiveArtifacts artifacts: 'result.txt', fingerprint: true
      }
    }
  }
}
