<<<<<<< HEAD
#Pipeline setup for TF script execution

=======
>>>>>>> dd04591b96d87fe3390d67dbe980995f98d597c2
pipeline {
  
  agent any  
  
  stages {
    stage('checkout') {
      steps {
        checkout scm
  	    }
    	}
    
    stage('Terraform initialize') {
      steps {
        sh 'terraform init'
      }
    }
    
    stage('Terraform plan') {
      steps {
        sh 'terraform plan -out tfplanout'
      }
    }
    
    stage('approval') {
      options {
        timeout(time: 1, unit: 'HOURS') 
      }
      steps {
        input 'approve the plan to proceed and apply'
      }
    }
    
    stage('apply') {
      steps {
        sh 'terraform apply -auto-approve tfplanout'
        cleanWs()
      }
    }
  }
}
