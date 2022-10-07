FROM ubuntu

SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
	apt-get install -y\
	iverilog\
	git

ADD . scr/


WORKDIR scr/

CMD pwd && \
	ls -la && \
 	cd dev/day_1 && \
	./run_all_using_iverilog_under_linux_or_macos_brew.sh	
