# Kamailio on docker 
Simple build kamailio on docker

![ver](https://img.shields.io/badge/kamailio-5.2-critical)
![docker](https://img.shields.io/badge/docker-container-violet)

### Build
	git clone https://github.com/t7hm1/kamailio-docker.git && cd kamailio-docker
	docker image build -t kamailio_docker .
	
### Run
*	docker run -tid --rm --network=host --name=kamailio kamailio_docker

## License
![License](https://img.shields.io/github/license/t7hm1/kamailio-docker?color=yellow&style=for-the-badge)
