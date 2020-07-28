# container-xrdp

Docker container for xrdp (both Xorg and Xvnc) currently based on Amazon Linux 2 and Mate Desktop

## How to use

first pull the container

```bash
docker pull danchitnis/xrdp
```

You have to give username, password, and sudo ability as input arguments to the docker run command. Hence, each user has there parameters. The process will exit if the input arguments are incorrect. Please run as interactive mode at first instance

Example when username is 'foo', password is 'bar' and sudo ability is 'no':

```bash
docker run -it -p 33890:3389 danchitnis/xrdp foo bar no
```

Similarly for detached mode

```bash
docker run -d -p 33890:3389 danchitnis/xrdp foo bar no
```

Once running, open Remote Desktop Connection. Enter "localhost:33890" as the address.

In the example username is 'foo' and the password is 'bar'.

## Adding more users

You can add more users as a list of arguments and 3 inputs per user as described above

Example:
| User | Pass | Sudo |
|---|:---:|---:|
| foo | bar | no |
| baz | cox | no |

```bash
docker run -it -p 33890:3389 danchitnis/xrdp foo bar no baz qux no
```

Sudo ability is not implemented yet.
