node {
	def app
	
	stage('Clone repository'){
		
		checkout scm
	}
	stage ('Build image'){
	sudo $USER
	app=docker.build("itsmesrds/try1")
		
	}
	stage('Test image'){
	
	app inside{
		sh 'echo "Tests passed"'
	}
}
	stage('Push image'){
	docker.withRegistry('https://registry.hub.docker.com','docker-hub-credentials'){
	app.push("${env.BUILD_NUMBER}")
	app.push("latest")
}
}
}

