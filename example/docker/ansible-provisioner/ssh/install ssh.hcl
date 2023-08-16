provisioner "shell" {
    // https://grigorkh.medium.com/fix-tzdata-hangs-docker-image-build-cdb52cc3360d
    // https://www.google.com/search?q=docker+tzdata+stuck
    environment_vars = [
        "TZ=Asia/Dubai",
    ]
    inline = [
        "apt update",
        "ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone",
        "apt install -y tzdata",
    ]
}
