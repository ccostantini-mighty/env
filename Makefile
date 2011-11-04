#!/bin/bash
MANIFEST_DOT_FILES=dot_files
INSTALL_DIR=${HOME}
#overwrite the existing set of dot files
dots: 
	@(for i in `ls -A ${MANIFEST_DOT_FILES}`; do echo $$i; if [ -f ${INSTALL_DIR}/$$i ]; then mv ${INSTALL_DIR}/$$i ${INSTALL_DIR}/$$i.bak; fi; if [ -h ${INSTALL_DIR}/$$i ]; then rm ${INSTALL_DIR}/$$i; fi; ln -s env/${MANIFEST_DOT_FILES}/$$i ${INSTALL_DIR}/$$i; done;)
	@echo Done installing dot files
