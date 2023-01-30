# dockered-cmd

This repository is for scripts which realizes container as a command.

## Usage

Supported commands are in "availables" dir.

To enable command, hit below:

`sudo ./dockered-cmd enable <command> <alias:optional>`

If you enable command, the symbolic link to the enabled command is created in /usr/local/bin.

To disable command, hit below:

`sudo ./dockered-cmd disable <command> <alias:optional>`

If you disable command, the symbolic link is removed.

## Available commans

|command|version|repository|tag|note|
|---|---|---|---|---|
|cloud-build-local|0.5.0|[docker.io/tei1988/cloud-build-local](https://hub.docker.com/r/tei1988/cloud-build-local)|0.5.0-alpine||
|docker-compose|1.29.2|[docker.io/docker/compose](https://hub.docker.com/r/docker/compose)|1.29.2||
|gcloud|300.0.0|[docker.io/tei1988/cloud-build-local](https://hub.docker.com/r/tei1988/cloud-build-local)|0.5.0-alpine||
|tbx|89.8.931|[docker.io/tei1988/tbx](https://hub.docker.com/r/tei1988/tbx)|89.8.931-alpine||
|go|1.14.4|[docker.io/library/golang](https://hub.docker.com/_/golang)|1.14.4-buster||
|node|16.15.1|[docker.io/tei1988/node](https://hub.docker.com/r/tei1988/node)|16.15.1-alpine||
|npm|depend on node|[docker.io/tei1988/node](https://hub.docker.com/r/tei1988/node)|16.15.1-alpine|`sudo ./dockered-cmd enable node npm`|
|npx|depend on node|[docker.io/tei1988/node](https://hub.docker.com/r/tei1988/node)|16.15.1-alpine|`sudo ./dockered-cmd enable node npx`|
|pdfunite|0.88.0|[docker.io/tei1988/poppler-utils](https://hub.docker.com/r/tei1988/poppler-utils)|0.88.0-alpine||
|shellcheck|0.7.1|[docker.io/koalaman/shellcheck-alpine](https://hub.docker.com/r/koalaman/shellcheck-alpine)|v0.7.1||
|terraform|0.12.28|[docker.io/hashicorp/terraform](https://hub.docker.com/r/hashicorp/terraform)|0.12.28||
|ulid|2.0.2|[docker.io/tei1988/ulid](https://hub.docker.com/r/tei1988/ulid)|2.0.2-alpine||
|unzip|latest|[docker.io/kubeless/unzip](https://hub.docker.com/r/kubeless/unzip)|latest||
