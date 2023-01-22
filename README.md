# Dockerfile: aws-cli-tokyo

Docker image of [amazon/aws-cli](https://hub.docker.com/r/amazon/aws-cli) set in Asia/Tokyo time.
Works portable.

[What Is the AWS Command Line Interface? - AWS Command Line Interface](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)

## Why?

The container of AWS official docker image is UTC+0000, and it does not match the time of the client OS.
So I created this image for my OS (UTC+0900 Asia/Tokyo time).

## Installation

Install Docker on your PC.

[Get Docker | Docker Documentation](https://docs.docker.com/get-docker/)

Pull this Docker image.

```console
$ docker pull tuckn/aws-cli-tokyo
```

Move to your portable directory.

```console
$ cd <Your Directory Path>
```

Configure AWS CLI.

```console
$ docker run --rm -it -v <Your .aws path>:/root/.aws tuckn/aws-cli-tokyo configure
AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
Default region name [None]: us-east-1
Default output format [None]: ENTER
```

## Usage

```console
$ docker run --rm -it -v <Your .aws path>:/root/.aws tuckn/aws-cli-tokyo <command>
```

Example on Windows

```console
> docker run --rm -it -v %CD%\.aws:/root/.aws tuckn/aws-cli-tokyo s3 ls
2020-01-23 12:34:56 your-bucket-name1
2020-03-27 12:34:56 your-bucket-name2
...
```

There is a batch file for Windows in this repository *./scripts/aws-jp-portable.cmd*, so you can use it as well.

```console
> aws-jp-portable s3 ls
```

## License

MIT

Copyright (c) 2020 Tuckn
