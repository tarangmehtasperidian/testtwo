// pipeline {
//   agent {
//     dockerfile {
//       filename 'Dockerfile'
//     }
pipeline {
  agent { dockerfile true }
  stages {

    stage('CDK bootstrap') {
      steps {
        dir(path: 'serverless') {
          sh 'cdk bootstrap'
        }

      }
    }

    stage('CDK synth') {
      steps {
        dir(path: 'serverless') {
          sh 'cdk synth'
        }

      }
    }

    stage('IaC Scan') {
      steps {
        sh '''mkdir iac-scan
find ./serverless/cdk.out/ -name \'*.template.json\' -exec cp -prv \'{}\' \'./iac-scan\' \';\''''
        dir(path: 'iac-scan') {
          prismaIaC(high: '1000', low: '1000', medium: '1000', operator: 'AND', assetname: 'cdk-test', tags: 'env:sandbox', templatetype: 'CFT', hostName: 'odp-jenkins', templateversion: '0')
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
