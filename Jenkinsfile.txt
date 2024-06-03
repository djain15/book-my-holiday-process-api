pipeline{

agent any

stages {

stage('Build Application') {

steps {

bat 'mvn clean package'

}
}
stage('Deploy CloudHub 2.0') {

environment {

ANYPOINT_CREDENTIALS = credentials('anypoint.credential.id')

}

steps {

echo 'Deploying mule project due to the latest code commit'

echo 'Deploying to the configured environment'

bat 'mvn clean deploy -DmuleDeploy  -Dusername=${ANYPOINT_CREDENTIALS_USR} -Dpassword=${ANYPOINT_CREDENTIALS_PSW} -DworkerType=Micro -Dworkers=1  -Dkey=apisero  -Dtarget=Cloudhub-US-East-2 -Dreplicas=1 -DvCores=0.1 -Danypoint.platform.client_id=f57dd8067b2b4d06ab76546a1b910e3f -Danypoint.platform.client_secret=959c539aF8A54aEdb00A671966cFa731 -Dreplicas=1 -Denvironment=Sandbox -DskipTests=true'

}

}
}
}
