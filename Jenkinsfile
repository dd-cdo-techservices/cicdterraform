#Pipeline setup for TF script execution

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