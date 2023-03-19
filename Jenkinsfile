// pipeline {
//   agent {
//     dockerfile {
//       filename 'Dockerfile'
//     }
pipeline {
  agent { dockerfile true }
  stages {
    stages {
    stage('Install dependencies1') {
      steps {
        dir(path: 'serverless') {
          sh 'npm install @aws-cdk/aws-s3'
        }

      }
    }
    stage('Build dependencies2') {
      steps {
        dir(path: 'serverless') {
          sh 'npm run build'
        }

      }
    }
    stage('CDK bootstrap') {
      steps {
        dir(path: 'serverless') {
          sh 'cdk bootstrap'
        }

      }
    }
    stage('CDK deploy') {
      steps {
        dir(path: 'serverless') {
          sh 'cdk deploy --require-approval=never'
        }

      }
    }

  }
}
