BRANCH=dev
init:
	git submodule update --init --recursive
pull:
	git submodule foreach --recursive git checkout ${BRANCH} && git checkout ${BRANCH}
	git submodule foreach --recursive git pull origin ${BRANCH} && git pull origin ${BRANCH}
