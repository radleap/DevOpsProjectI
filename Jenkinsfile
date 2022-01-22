pipeline {

  agent any

  options {
    skipDefaultCheckout()
    buildDiscarder(logRotator(numToKeepStr: '45'))
  }

  stages {
    stage('Clean Directory') {
      steps {
        deleteDir()
      }
    }
    stage('Prepare Repo') {
      steps {
        checkout([
            $class           : 'GitSCM',
            branches         : [[name: '*/main']],
            userRemoteConfigs: [[ url:'https://github.com/radleap/DevOpsProjectI.git'
                                ]]
        ])
      }
    }
    // Builds Docker image and container (via test_run.sh)
    // Creates an image with a conda environment activated for tableau_dash, and mounts mindful_WIP as volume, runs py script
    stage('Building Docker Run Sh') {
      steps {  
        sh "${env.WORKSPACE}/run.sh"
      }
    }
  }
}