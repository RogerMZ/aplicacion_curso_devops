pipeline {
  agent any
  stages {
    stage('Inicio_Environment') {
      steps {
        echo 'Iniciando construcción de proyectos'
        sh 'env'
      }
    }

    stage('Docker Env') {
      parallel {
        stage('Docker Env') {
          steps {
            sh 'docker -v'
          }
        }

        stage('Images from docker') {
          steps {
            sh 'docker images'
          }
        }

      }
    }

    stage('Build') {
      steps {
        sh 'cat versionImage | xargs ./scripts/build.sh'
      }
    }

    stage('Run Container') {
      steps {
        sh 'cat versionImage | xargs ./scripts/run.sh'
      }
    }

    stage('Test') {
      steps {
        sh './scripts/test.sh'
      }
    }

    stage('Stop Container') {
      steps {
        sh './scripts/stop.sh'
      }
    }

  }
}