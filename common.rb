# require_relative by other files

module Common
  # https://portal.cloud.hashicorp.com/vagrant/discover/debian/bookworm64
  OS_NAME = "debian/bookworm64"
  OS_VERSION = "12.20250126.1"

  # https://zhuanlan.zhihu.com/p/20370097929
  SHELL_SCRIPTS = <<-SHELL
    cat << EOF > /etc/apt/sources.list
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm main contrib non-free non-free-firmware
deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm main contrib non-free non-free-firmware
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm-updates main contrib non-free non-free-firmware
deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm-updates main contrib non-free non-free-firmware
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm-backports main contrib non-free non-free-firmware
deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm-backports main contrib non-free non-free-firmware
deb https://mirrors.tuna.tsinghua.edu.cn/debian-security bookworm-security main contrib non-free non-free-firmware
deb-src https://mirrors.tuna.tsinghua.edu.cn/debian-security bookworm-security main contrib non-free non-free-firmware
EOF
    apt-get update
  SHELL
end
