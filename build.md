# Building Docker containers

In order to build the containers on your system first clone the repository. For the best perfromance please use WSL2. If using native Windows, then don't forget to change the path from Linuux `/` to Windows `\`


```bash
git clone https://github.com/danchitnis/container-xrdp.git
cd container-xrdp
```

Then

```bash
docker build -f ./{name_of_container} -t {your_name_for_the_container} .
```

For example, to build `ubuntu-xfce` use the following command:

```bash
docker build -f ./ubuntu-xfce/Dockerfile -t ubuntu-xfce .
```

then run

```bash
docker run -it -p 33890:3389 ubuntu-xfce foo bar no
```
