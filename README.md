# container-xrdp
Docker container for xrdp (both Xorg and Xvnc) based on Amazon Linux 2 and Mate Desktop

## How to use
first pull the container
```bash
docker pull danchitnis/xrdp
```

Once completed, run the container in interactive mode
```bash
docker run -it -p 33890:3389 danchitnis/xrdp
```

or detached mode
```bash
docker run -d -p 33890:3389 danchitnis/xrdp
```

Once running, open Remote Desktop Connection. Enter "localhost:33890" as the address.

temporary username is "foo" and the password is "bar".
