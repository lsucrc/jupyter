# Jupyter Notebook (based on CentOS 7)

This is a containerized distribution of Jupyter Notebook by Louisiana State University Coastal Resilience Collaboratory (https://crc.cct.lsu.edu/). This image is to enable an embedded web page with iframe. More about Jupyter project itself can be found at [Jupyter Official Site](http://jupyter.org/).

## Spinning up Jupyter container

On **Linux** 

    $ docker run --rm -it -p 8888:8888 -v "$(pwd):/notebooks" lsucrc/notebook

then Visit `http://localhost:8888/` with your favourite web browser. All notebooks from your session will be saved in the current directory.

On other platforms, such as **Windows and OS X**, that use
[`docker-machine`](https://docs.docker.com/machine/install-machine/) with `docker`, a container can be started using
`docker-machine`. In the browser, open the URL `http://ip:8888/` where `ip` is
the IP address returned from the command [`docker-machine ip <MACHINE>`](https://docs.docker.com/machine/reference/ip/):

    $ docker-machine ip <MACHINE>

## Resources
- [Project Jupyter website](https://jupyter.org)
- [Documentation for Jupyter notebook](http://jupyter-notebook.readthedocs.org/en/latest/) [[PDF](https://media.readthedocs.org/pdf/jupyter-notebook/latest/jupyter-notebook.pdf)]
- [Documentation for Project Jupyter](http://jupyter.readthedocs.org/en/latest/index.html) [[PDF](https://media.readthedocs.org/pdf/jupyter/latest/jupyter.pdf)]
- [Issues](https://github.com/jupyter/notebook/issues)
- [Technical support - Jupyter Google Group](https://groups.google.com/forum/#!forum/jupyter)
- [SIMULOCEAN Project](http://xsede.simulocean.org)
- [Coastal Resilience Collaboratory](http://crc.cct.lsu.edu)
