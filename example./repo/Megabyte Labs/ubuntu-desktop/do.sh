git clone --recurse-submodules https://gitlab.com/megabyte-labs/packer/ubuntu-desktop.git

install_goTask(){
# Bodega Doesn't work! but the original go-task works.
# https://github.com/go-task/task
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install go-task
}

task packer:build
