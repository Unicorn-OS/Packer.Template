# https://askubuntu.com/questions/444849/how-to-list-all-virtual-machines-created-using-qemu-system-x86-64

get_vm(){
    ps -ef | awk -e '/qemu/ && !/awk/' | sed -e 's/[^/]*//' -e 's/ -/\n\t-/g'
}