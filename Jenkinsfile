node{
  def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("azeddine/composer")
    }

    // stage('Test image') {
    //     docker.image('azeddine/composer').withRun('-v $PWD:/app --name bidon') { c ->
    //         sh 'docker ps'
    //         sh 'docker run --rm --volume $PWD:/app azeddine/composer install'
	//     }
    // }
    stage('Test image') {

        sh 'docker ps'
        sh 'docker run --rm -v $PWD:/app azeddine/composer install'
    }
}

