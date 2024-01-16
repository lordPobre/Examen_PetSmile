node {
  stage ('SCM Checkout'){
    git 'https://github.com/Efsilvay/ReservaHora.git'
  }
  stage ('Compile-Package'){
    def mvnHome = tool name: 'M2_HOME', type: 'maven'
    sh "${mvnHome}/bin/mvn package"
  }
}
