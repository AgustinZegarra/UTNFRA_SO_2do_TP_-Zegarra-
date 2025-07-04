    1  sudo apt update
    2  sudo apt install git
    3  sudo apt install wget gpg
    4  sudo apt update
    5  sudo apt install -y software-properties-common
    6  sudo apt-add-repository --yes --update ppa:ansible/ansible
    7  sudo apt update
    8  sudo apt install -y ansible
    9  ansible --version
   10  # Add Docker's official GPG key:
   11  sudo apt-get update
   12  sudo apt-get install ca-certificates curl
   13  sudo install -m 0755 -d /etc/apt/keyrings
   14  sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
   15  sudo chmod a+r /etc/apt/keyrings/docker.asc
   16  # Add the repository to Apt sources:
   17  echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
   18    $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
   19  sudo apt-get update
   20  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
   21  sudo docker run hello-world
   22  git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
   23  cd UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
   24  cd UTN-FRA_SO_Examenes/202406
   25  chmod +x script_Precondicion.sh
   26  ./script_Precondicion.sh
   27  source ~/.bashrc
   28  cd ~
   29  RTA=RTA_EXAMEN_$(date +%Y%m%d)(date +%Y%m%d)
   30  RTA=RTA_EXAMEN_$(date +%Y%m%d)
   31  mkdir "$RTA"
   32  cd "$RTA"
   33  cat > Punto_A.sh << 'EOF'
   34  su - zegarra
   35  sudo fdisk -l
   36  sudo fdisk /dev/sdc
   37  sudo fdisk /dev/sdd
   38  sudo pvcreate /dev/sdd1 /dev/sdc1 /dev/sdc2
   39  sudo vgcreate vg_datos /dev/sdd1 /dev/sdc1
   40  sudo vgs
   41  sudo lvcreate -L +0.5G vg_datos -n lv_docker
   42  sudo lvcreate -L +1.5G vg_datos -n lv_workareas
   43  sudo lvcreate -l +100%FREE vg_datos -n lv_docker
   44  sudo lvs
   45  sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
   46  sudo lvs
   47  sudo mkfs.ext4 /dev/vg_datos/lv_docker
   48  sudo mkfs.ext4 /dev/vg_datos/lv_workareas
   49  sudo vgcreate vg_temp /dev/sdc2
   50  sudo vgs
   51  sudo lvcreate -L +0.5G vg_temp -n lv_swap
   52  sudo lvcreate -l +100%FREE vg_temp -n lv_swap
   53  sudo lvs
   54  sudo mkswap /dev/vg_temp/lv_swap
   55  sudo lvs
   56  sudo mkswap /dev/mapper/vg_temp/lv_swap
   57  sudo lvdisplay
   58  sudo mkswap /dev/vg_temp/lv_swap
   59  sudo lvs
   60  cd /var/lib/
   61  lib
   62  li
   63  lt
   64  ll
   65  sudo mount /dev/vg_datos/lv_docker /var/lib/docker
   66  cd /
   67  ls
   68  mkdir work
   69  sudo mkdir work
   70  sudo mount /dev/vg_datos/lv_workareas /work
   71  df -h
   72  sudo swapon /dev/vg_temp/lv_swap
   73  free -h
   74  sudo systemctl restart docker
   75  sudo systemctl status docker
   76  history
