# TACAS2021-Artifact

**Note:** If you already have a copy of the artifact (named `fimdp-artifact.zip`
by default), proceed to the artifact installation and usage instructions in
[README.md inside the
artifact](https://github.com/FiMDP/tacas2021-artifact/blob/main/README_artifact.md).

This repo contains scripts to create the artifact for TACAS submission of
[FiMDP]. The scripts should be run into a fresh instance of the virtual machine
(VM) for which you want to build the artifact. In our case, it is
https://zenodo.org/record/4041464#.X42Af5qxVhE. (You might need to add some
dependencies for other VMs.)

Once generated, the artifact contains FiMDP, FiMDPEnv, documentation of FiMDP,
tutorials, and evaluation of FiMDP. In addition, it contains sources of large
C++ libraries/tools [Storm] (with Python bindings [Stormpy]) and [Spot] and all
dependencies needed to build them even without an internet connection.

To get started, clone this repo on your local machine in a directory of your
choice:

```
git clone https://github.com/FiMDP/tacas2021-artifact.git
```

**Note:** Do not run any scripts locally, as that would most likely skip
download of some dependencies which you already have installed.

Now create a fresh instance of the intended VM and link the directory with this
repo as a shared folder in the VM. This VM needs internet connection as it
downloads all the tools and dependencies. They are not included in this repo.

If you want to use shared folder to transfer files between your machine and the
VM, mount the folder with this repo to `/home/tacas21/Desktop/artifact` in the
VM (or change the name accordingly in `make_local_copy.sh`). Shared folders have
a strict permissions and the build would fail. Therefore, we need to copy the
files to a non-shared folder first (and change permissions). There is a script
for that.

```sh
sudo bash Desktop/artifact/make_local_copy.sh
cd artifact_local
```

Then, in the local copy, run the following. The `cp` command copies the .zip
file with the artifact back into the shared folder.

```sh
./create_artifact.sh && sudo cp fimdp-artifact.zip /home/tacas21/Desktop/artifact
```

## Testing and using the artifact

After you build the .zip file with the artifact, create a new and fresh instance
of the VM, now with at least 8GB of RAM (we recommend 10) and some more CPU
cores, if you have. This speeds up the lengthy compilation of Storm and Spot.
With more cores, you might actually need to add RAM as well. Also, to be sure
that everything works, disable the network connection of this VM instance. Then,
transfer the generated .zip file to the new VM, unzip it, and follow the
README.md inside the fimdp directory. (You can change the value of
`ART_ROOT_DIR` in `create_artifact.sh` to change the name).


[FiMDP]: https://github.com/FiMDP/FiMDP
[FiMDPEnv]: https://github.com/FiMDP/FiMDPEnv
[Storm]: https://www.stormchecker.org/
[Stormpy]: https://moves-rwth.github.io/stormpy/
[Spot]: https://spot.lrde.epita.fr/
