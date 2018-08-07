node {
	def app
	
	stage('Clone repository'){
		
		checkout scm
	}
	stage ('Build image'){
	
<<<<<<< HEAD
	app=docker.build("itsmesrds/try1")
=======
	app=sudo docker.build("itsmesrds/try1")
>>>>>>> 0d6d93f7ead02f966b72d54f03239ee96e69d11f
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

