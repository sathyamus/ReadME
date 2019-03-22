
#### Hackathon

1. Identify the Use case to work on MVP (Minimum viable product)
2. Select the team members ranging from 2-4, who has diversity in skills (DevOps, UI / FullStack)


DevOps
	-> Git Pull Request \
		-> Generate the token and register that token in Jenkins 1.x, in Jenkins2 it has built in support \
		-> Add the Jenkins hook link in git
		
	-> Add Pull Request Template to mention the standards / key points to remind
		.github/pull_request_template.md
		.github/PULL_REQUEST_TEMPLATE/pull_request_template.md
		
	-> Add .github/CODEOWNERS
	
	-> Use IntelliJ Git commit plug-in, for [commit messages][commit-msg]
	
	-> For Deployment, to make it happen quickly, use manual script for the steps
	-> Stop / Start script should be idempotent, to not to throw error.
-------------- 
		
[commit-msg]: https://github.com/sathyamus/ReadME/.github/CONTRIBUTING.md
