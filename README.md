# Kamailio on docker 
![ver](https://img.shields.io/github/v/release/mach1el/docker-kamailio?color=red&style=plastic)
![License](https://img.shields.io/github/license/mach1el/docker-kamailio?color=yellow&style=plastic)
![docker](https://img.shields.io/badge/docker-container-violet)

Build and run kamailio on docker

### Pull from hub
	docker pull mich43l/kamailio

### Build from source
	git clone https://github.com/mach1el/docker-kamailio.git && cd docker-kamailio
	docker image build -t kamailio .
	
### Run from local
*	docker run \
	-tid \
	--rm \
	--network=host \
	--name=kamailio \
	-v /etc/kamailio:/etc/kamailio \
	kamailio 

### Run from hub
* docker run \
	-tid \
	--rm \
	--network=host \
	--name=kamailio \
	-v /etc/kamailio:/etc/kamailio \
	mich43l/kamailio 