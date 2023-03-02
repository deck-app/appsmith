## Introduction

[Appsmith](www.appsmith.com), is the first open-source low code tool that helps developers build dashboards and admin panels very quickly. It's a platform that helps businesses build any custom internal application within hours.


## Getting started
### Install
#### Using DECK

Install appsmith from the DECK marketplace and follow the instructions on the GUI

#### From terminal with Docker
The quickest way to get started with the Symfony Development Container is using docker-compose.
Download the docker-compose.yml file in the application directory:
```
$ git clone https://github.com/deck-app/appsmith.git
$ cd appsmith
$ docker-compose up -d
```
## Exporting Your Data
Once you begin using Appsmith, you’ll quickly assemble apps which could be difficult to replicate in the future. You should frequently back up your installation to guard against data loss.

The Docker image includes a command that can produce a complete archive on-demand:
```
docker-compose exec <contaner name> appsmithctl export_db
```
The backup will be stored to /appsmith-stacks/data/backup/appsmith-data.archive inside the container. Use docker cp to move the archive to your Docker host:
```
docker cp <contaner name>:/appsmith-stacks/data/backup/appsmith-data.archive appsmith-backup-$(date +%Y-%m-%d).archive
```
Next copy the /appsmith-stacks/configuration directory out of the container. Including these files in your final backup will avoid having to reconstruct your config file after a backup restoration. Now you can upload your backup to cloud storage or a dedicated server to protect your data if your Docker host suffers a failure.
To restore a backup archive in the future, copy it to /appsmith-stacks/data/restore in a new Appsmith container and run the import_db command:

```
docker cp appsmith-backup-2022-04-13.archive <contaner name>:/appsmith-stacks/data/restore
docker-compose exec <contaner name> appsmithctl import_db
```
Restart Appsmith to complete the restoration:
```
docker-compose restart <contaner name>
```
