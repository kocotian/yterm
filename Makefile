make:
	@touch yterm
	@cat config.sh source.sh > yterm
	@echo -n '# yterm v1.1 by Kocotian, generated ' >> yterm
	@date >> yterm
install:
	@echo Installing to ${DESTDIR}${PREFIX}/bin
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@cp -f yterm ${DESTDIR}${PREFIX}/bin
	@chmod 755 ${DESTDIR}${PREFIX}/bin/yterm
