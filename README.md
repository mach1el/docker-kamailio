# Kamailio on docker 
![ver](https://img.shields.io/github/v/release/mach1el/docker-kamailio?color=red&style=plastic)
![License](https://img.shields.io/github/license/mach1el/docker-kamailio?color=yellow&style=plastic)
![reposize](https://img.shields.io/github/repo-size/mach1el/docker-kamailio?color=orange&style=plastic)
![dockerbuild](https://img.shields.io/docker/automated/mich43l/kamailio?style=plastic)

Build and run kamailio on docker

### Pull from hub
	docker pull mich43l/kamailio

### Build from source
	git clone https://github.com/mach1el/docker-kamailio.git && cd docker-kamailio
	docker image build -t kamailio .
	
### Run from local
*	docker run -tid --rm --network=host --name=kamailio -v /etc/kamailio:/etc/kamailio kamailio 

### Run from hub
* docker run -tid --rm --network=host --name=kamailio -v /etc/kamailio:/etc/kamailio mich43l/kamailio 

### Notes
This using default its scripting,to use your custom scripting just `mount` */etc/kamailio* to your path