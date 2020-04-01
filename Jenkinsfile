pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh '''#!/usr/bin/env bash

                      sleep 10; echo "Running Build"
                      sleep 10; echo "Running Build"
                      sleep 10; echo "Running Build"

                      echo "Build Successful"
                '''
            }
        }
        stage('Test') {
            steps {
                sh '''#!/usr/bin/env bash

                      sleep 10; echo "Running Tests"
                      sleep 10; echo "Running Tests"
                      sleep 10; echo "Running Tests"

                      echo "Tests Successful"
                '''
            }
        }
        stage('Deliver for development') {
            when {
                branch 'development'
            }
            steps {
                bash '''#!/usr/bin/env bash
                        source ~/.bash_profile;

                        sleep 10; echo "Running Development WebApp"
                        sleep 900
                '''
                input message: 'Click "Proceed" to continue'
                sh 'echo "deleting!"'
            }
        }
        stage('Deploy for production') {
            when {
                branch 'production'
            }
            steps {
                sh '''#!/usr/bin/env bash
                        source ~/.bash_profile;

                        sleep 10; echo "Running Production WebApp"
                        sleep 900
                '''
                input message: 'Click "Proceed" to continue'
                sh 'echo "deployed!"'
            }
        }
    }
}