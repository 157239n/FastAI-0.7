
# FastAI 0.7 setup

If you happen to follow along the courses by fast.ai, some lessons are in the outdated 0.7 version, and there are absolutely no replacement for those courses. So if you happen to find yourself frustrated in setting up an environment for yourself, here is a Docker Compose project that you can get up and running in a few seconds.

## Operating system

Currently, this setup is exclusive for Linux. It can work on windows, but you have to bear the burden of looking inside the Dockerfile and know what to do.

## For the uninitiated

To just get things to work, do the following steps:

- Install Docker and Docker Compose
- Pull this repo down
- Run `deploy.sh` to start the environment
- Run `getUrl.sh` to get the url of the environment

Once the environment is up and running, it will run forever. If you restart the computer, it will automatically start again, so you don't have to worry about doing anything in the future. But if you wish to shutdown the environment, run `shutdown.sh`. Generally you don't want to get into the container, but if you need to do so, run `enter.sh`. The image for the environment is available on hub.docker.com, but if you need to build the image on your own, feel free to do so using the `build.sh` command. This image is based on [`157239n/basic`](https://github.com/157239n/Images) so you might need to grab that also.

## Other tidbits

- The /home directory will be mounted as /hostHome. You can then download FastAI from GitHub and open any notebooks you want.
- The default port is 5000, but you needn't worry about stuff like this, because you will just have the URL from `getUrl.sh` command.

## Installing Docker and Docker Compose

Installing Docker is super easy. The setup script is at [get.docker.com](https://get.docker.com), so you just have to pipe it into a shell: `curl -L get.docker.com | sh`. After that you may want to run Docker stuff as non-root, so you can do `usermod -aG docker your_user_name`. After changing your user's group, you might have to log out and log back in for it to take effect.

Installing Docker Compose is a bit trickier, but not much trickier. Go to the GitHub repo [github.com/docker/compose](https://github.com/docker/compose), then go to the releases page and follow the installation instructions there. At the time of writing, the commands to install are:
```
curl -L https://github.com/docker/compose/releases/download/1.25.4/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
```

After that, you are all set
