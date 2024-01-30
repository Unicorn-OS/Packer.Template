to=~/.uni/image/packer
source=$to/atomic-workstation

init(){
    mkdir -p $to
    cd $to
    git clone https://github.com/fkrull/atomic-workstation.git
}

build(){
    cd $source
    export TMPDIR=/var/tmp
    packer build -only="*.qemu" -var-file="vars/fedora38-silverblue.pkrvars.hcl" .
}

add(){
    cd $source
    name=fedora38-silverblue
    image=output/qemu/$name-38.*.box

    vagrant box add $image --name $name
}

main(){
    init
    build
    add
}