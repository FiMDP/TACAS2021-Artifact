# TACAS2021-Artifact

**Note:** If you already have a copy of the artifact (named `fimdp-artifact.zip` by default),
proceed to [artifact installation and usage instructions.](https://github.com/FiMDP/tacas2021-artifact/blob/main/README_artifact.md)

This repo contains scripts to create the artifact for TACAS submission of FiMDP. Once generated, 
the artifact contains all the dependencies which can be used to install all additional required 
libraries and software even on machines without a network connection. To get started, clone this 
repo on your local machine in a directory of your choice:

```
git clone https://github.com/FiMDP/tacas2021-artifact.git
```

After obtaining a copy of this repo, change your working directory to the repo
and use the following command to build the artifact with the name `fimdp-artifact.zip`.

```
create_artifact.sh
```
 
If you use a shared folder to put this directory into the VM, mount this directory
to `/home/tacas21/Desktop/artifact` and run the following to create the archive 
outside the shared folder and copy it there.


```bash
sudo bash Desktop/artifact/make_local_copy.sh
cd artifact_local
./create_artifact.sh && sudo cp fimdp-artifact.zip /home/tacas21/Desktop/artifact
```
