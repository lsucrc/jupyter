#Version 1.1
#add the base image
FROM lsucrc/crcbase
RUN  yum install -y python-pip python-devel sqlite3
RUN  pip install jupyter

# Add a notebook profile.
RUN mkdir -p -m 700 /root/.jupyter/custom && \
    echo "c.NotebookApp.ip = '*'" >> /root/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.tornado_settings = { 'headers': { 'Content-Security-Policy': \"frame-ancestors * \" } }" >> /root/.jupyter/jupyter_notebook_config.py && \
    echo "define(['base/js/namespace'], function(Jupyter){ Jupyter._target = '_self'; });" >> /root/.jupyter/custom/custom.js && \
    echo "div#header-container { display: none; }" >> /root/.jupyter/custom/custom.css && \
    echo "div#site{ height: 100%; }" >> /root/.jupyter/custom/custom.css


VOLUME /notebooks
WORKDIR /notebooks

# Add Tini. Tini operates as a process subreaper for jupyter to prevent crashes.
ENV TINI_VERSION v0.9.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

EXPOSE 8888
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0"]
