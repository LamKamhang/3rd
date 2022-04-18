PROJ_ROOT = $(abspath $(lastword $(MAKEFILE_LIST))/../)
JOBS=$(shell cat /proc/cpuinfo | grep "processor" | wc -l)

.PHONY: all

all:
	cmake -S${PROJ_ROOT} -B${PROJ_ROOT}/build-release \
		-DCMAKE_BUILD_TYPE=Release
	cmake --build ${PROJ_ROOT}/build-release -j$(JOBS)
