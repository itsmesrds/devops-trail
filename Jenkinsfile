node {
	def app
	
	stage('Clone repository'){
		
		checkout sc#
	}
	stage ('Build image'){
	
	app=docke.build("itsmesrds/try1")
	}
	stage('Test image'){
	
	app inside{
		sh 'echo "Testd passed"
	}
}
	stage('Push image'){
	docker.withRegistry('https://registry.hub.docker.com','docker-hub-credentials'){
	app.push("${env.BUILD_NUMBER}")
	app.push("latest")
}
}
}

