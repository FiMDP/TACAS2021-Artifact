# TACAS2021-Artifact
This repo contains scripts to create the artifact for TACAS submission of FiMDP.

The script `create_artifact.sh` builds `fimdp-artifact.zip`. 

If you use a shared folder to put this directory into the VM, mount this directory
to `/home/tacas21/Desktop/artifact` and run the following to create the archive 
outside the shared folder and copy it there.
```bash
sudo bash Desktop/artifact/make_local_copy.sh
cd artifact_local
./create_artifact.sh && sudo cp fimdp-artifact.zip /home/tacas21/Desktop/artifact
```
