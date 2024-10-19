# Proxy

export https_proxy=socks-proxy-azure.com:443
export HTTPS_PROXY=socks-proxy-azure.com:443
export NO_PROXY=localhost,127.0.0.1,192.*.*.*,.snsystems.com

--> Log in from Docker client:
docker login <harbor_address>

asks to provide Username, password then login will succeed

--> Pull an image:
	docker pull <harbor_address>/library/ubuntu:14.04

--> Tag the image:
	docker tag ubuntu:14.04 <harbor_address>/demo/ubuntu:14.04

--> Push the image:
	docker push <harbor_address>/demo/ubuntu:14.04

#### Enable Docker Content Trust

--------------------------------------------------------------------------------------------------------

Login to Docker Trusted Registry (DTR) .. Mirantis using UCP profile

--> Make sure to download the ucp_bundle from user profile login page.
--> Extract the ucp_bundle.zip
--> Unix / Linus
	source env.sh
--> Windows
	env.ps1
