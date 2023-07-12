# container-xrdp

Docker container for [xrdp](http://xrdp.org/) (both [Xorg](https://github.com/neutrinolabs/xorgxrdp) and [Xvnc](https://tigervnc.org/)) currently based on [Amazon Linux 2](https://aws.amazon.com/amazon-linux-2/), [CentOS](https://www.centos.org/), [Fedora](https://getfedora.org/), and [Ubuntu](https://ubuntu.com/). Full desktop environments [Mate](https://mate-desktop.org/) and [Xfce](https://www.xfce.org/) are supported. No privilege or sys_cap is required on the host system. These containers are lightweight and ideal for rapid development and testing purposes. Notice that the state of the container is not persisted between runs. In order to persist the state of the container, see [this guide](https://stackoverflow.com/questions/44480740/how-to-save-a-docker-container-state).

## How to use

First pull the container with the appropriate tag. the following tag combinations are available:

- danchitnis/xrdp:ubuntu-xfce
- danchitnis/xrdp:fedora-xfce
- danchitnis/xrdp:amazon-mate (no longer supported)
- danchitnis/xrdp:amazon-xfce (no longer supported)
- danchitnis/xrdp:centos7-mate (no longer supported)
- danchitnis/xrdp:centos7-xfce (no longer supported)
- danchitnis/xrdp:centos8-xfce (no longer supported)

Example:

```bash
docker pull danchitnis/xrdp:ubuntu-xfce
```

You have to give username, password, and sudo ability as input arguments to the docker run command. Hence, each user has three parameters. The process will exit if the input arguments are incorrect. Please run as interactive mode at first instance.

Example when username is _foo_, password is _bar_ and sudo ability is _no_:

```bash
docker run -it -p 33890:3389 danchitnis/xrdp:ubuntu-xfce foo bar no
```

Similarly for detached mode

```bash
docker run -d -p 33890:3389 danchitnis/xrdp:ubuntu-xfce foo bar no
```

Once running, open Remote Desktop Connection. Enter "localhost:33890" as the address.

In this example username is _foo_ and the password is _bar_.

## Adding more users

You can add more users as a list of arguments and 3 inputs per user as described above

Example:
| User | Pass | Sudo |
|---|:---:|---:|
| foo | bar | yes |
| baz | cox | no |

```bash
docker run -it -p 33890:3389 danchitnis/xrdp:ubuntu-xfce foo bar yes baz qux no
```

## Sudo users

Adding a sudo user will give that user sudo ability so that you can run privileged command _inside_ the container

For example start docker container with

```bash
docker run -d -p 33890:3389 danchitnis/xrdp:ubuntu-xfce foo bar yes
```

Once _inside_ the container user _foo_ can do this

```bash
sudo yum update
```

Notice that to give sudo ability, the third input parameter for each user should be explicitly _yes_, otherwise any other input will be ignored.

## Build

Check the following [guide](https://github.com/danchitnis/container-xrdp/blob/master/build.md) for building your own containers.

## Contributions

Inspired by [frxyt/docker-xrdp](https://github.com/frxyt/docker-xrdp)

Ubuntu commands by [danielguerra69/ubuntu-xrdp](https://github.com/danielguerra69/ubuntu-xrdp/)

xrdp service restrat by [timwa0669](https://github.com/timwa0669)
