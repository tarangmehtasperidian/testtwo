// pipeline {
//   agent {
//     dockerfile {
//       filename 'Dockerfile'
//     }
pipeline {
  agent { dockerfile true }
  stages {
    stage('Build dependencies') {
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
