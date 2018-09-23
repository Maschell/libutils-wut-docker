FROM wiiuwut/core:1.0.0-beta4

RUN mkdir /artifacts

RUN git clone https://github.com/Maschell/libutils -b wut && cd libutils && git checkout 534388dae50df8dd8d496010fe944259b1bf2609

RUN cd libutils && mkdir build && cd build && \
	cmake -DCMAKE_TOOLCHAIN_FILE=$WUT_ROOT/share/wut.toolchain.cmake -DCMAKE_INSTALL_PREFIX=/artifacts ../  &&\
	make install

RUN rm -rf libutils

WORKDIR /artifacts