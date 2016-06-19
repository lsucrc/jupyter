# Jupyter Notebook (based on CentOS)

The Jupyter notebook is a web-based notebook environment for interactive
computing.

More about Jupyter project can be found at 
[Jupyter platform, on ReadTheDocs](http://jupyter.readthedocs.org/en/latest/install.html).

## Running in a Docker container

If you are using **Linux** and have a
[Docker daemon running](https://docs.docker.com/installation/),
e.g. reachable on `localhost`, start a container with:

    $ docker run --rm -it -p 8888:8888 -v "$(pwd):/notebooks" lsucrc/notebook

In your browser, open the URL `http://localhost:8888/`.
All notebooks from your session will be saved in the current directory.

On other platforms, such as **Windows and OS X**, that use
[`docker-machine`](https://docs.docker.com/machine/install-machine/) with `docker`, a container can be started using
`docker-machine`. In the browser, open the URL `http://ip:8888/` where `ip` is
the IP address returned from the command [`docker-machine ip <MACHINE>`](https://docs.docker.com/machine/reference/ip/):

    $ docker-machine ip <MACHINE>

For example,

    $ docker-machine ip myjupytermachine
    192.168.99.104

## Resources
- [Project Jupyter website](https://jupyter.org)
- [Online Demo at try.jupyter.org](https://try.jupyter.org)
- [Documentation for Jupyter notebook](http://jupyter-notebook.readthedocs.org/en/latest/) [[PDF](https://media.readthedocs.org/pdf/jupyter-notebook/latest/jupyter-notebook.pdf)]
- [Documentation for Project Jupyter](http://jupyter.readthedocs.org/en/latest/index.html) [[PDF](https://media.readthedocs.org/pdf/jupyter/latest/jupyter.pdf)]
- [Issues](https://github.com/jupyter/notebook/issues)
- [Technical support - Jupyter Google Group](https://groups.google.com/forum/#!forum/jupyter)
