pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh '''#!/usr/bin/env bash
                        source ~/.bash_profile;
                        gem install bundler;

                        bundle install;
                '''
            }
        }
        stage('Test') {
            steps {
                sh '''#!/usr/bin/env bash
                        source ~/.bash_profile;

                        bundle exec rake test
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

                        bundle exec rake db:migrate;
                        bundle exec rackup --host 0.0.0.0;
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

                        bundle exec rake db:migrate;
                        bundle exec rackup --host 0.0.0.0;
                '''
                input message: 'Click "Proceed" to continue'
                sh 'echo "deployed!"'
            }
        }
    }
}