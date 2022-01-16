node{
  def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("azeddine/composer")
    }

    stage('Test image') {
        docker.image('azeddine/composer').withRun('-v $PWD:/app ') { c ->
            sh 'ls'
            sh 'docker ps'
	}
    }
}

