node{
    stage('SCM checkout'){
        git credentialsId: 'Git-Login', url: 'https://github.com/prathameshdamji/myapp'
    }
    stage('Build Docker Image'){
        sh 'docker build -t dockerpd/myapp .'
    }
    stage('Push Docker Images'){
        sh "docker login -u dockerpd -p psd9028211296"
        sh 'docker push dockerpd/myapp:latest'
    }
    stage('Run Container'){
        sh 'docker run -p 3000:80 dockerpd/myapp'
    }
    stage('Listing Docker Images & Containers'){
        sh 'docker images'
        sh 'docker ps'
        sh 'docker ps -a'
    }
}
