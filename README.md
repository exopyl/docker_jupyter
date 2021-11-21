
# Jupyter & docker

### Docker handling

#### Build

```sh
docker build -t jupyter_example .
```

#### Run the container

```sh
docker run -it -v [host/to/folder]:[container/to/folder] -p [port]:[port] [image] [cmd]
```
e.g
```sh
docker run -it -v D:\data:/tmp/ -p 8888:8888 jupyter_example bash
```
with display
```sh
docker run -it -v D:\data:/tmp/ --net=host -e DISPLAY jupyter_example bash
```

### Run Jupyter

In the container:
```sh
jupyter notebook --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token=demo
```

Open a browser and go to localhost:[port] (e.g. http://localhost:8888) where port is given with -p option.
Copy the token from the log in the container.

### Run everything

```sh
docker run -it -v D:\data:/tmp/ -p 8888:8888 jupyter_example bash -c "jupyter notebook --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token=demo"
```

Open a browser and go to http://127.0.0.1:8888/?token=demo.
