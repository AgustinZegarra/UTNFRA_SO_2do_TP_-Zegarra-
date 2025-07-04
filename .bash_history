sudo apt update
sudo apt install git
sudo apt install wget gpg
sudo apt update
sudo apt install -y software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible
ansible --version
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
cd UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
cd UTN-FRA_SO_Examenes/202406
chmod +x script_Precondicion.sh
./script_Precondicion.sh
source ~/.bashrc
cd ~
RTA=RTA_EXAMEN_$(date +%Y%m%d)(date +%Y%m%d)
RTA=RTA_EXAMEN_$(date +%Y%m%d)
mkdir "$RTA"
cd "$RTA"
cat > Punto_A.sh << 'EOF'
su - zegarra
sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdd1 /dev/sdc1 /dev/sdc2
sudo vgcreate vg_datos /dev/sdd1 /dev/sdc1 
sudo vgs
sudo lvcreate -L +0.5G vg_datos -n lv_docker
sudo lvcreate -L +1.5G vg_datos -n lv_workareas
sudo lvcreate -l +100%FREE vg_datos -n lv_docker
sudo lvs
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
sudo lvs
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo vgcreate vg_temp /dev/sdc2
sudo vgs
sudo lvcreate -L +0.5G vg_temp -n lv_swap
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo mkswap /dev/vg_temp/lv_swap
sudo lvs
sudo mkswap /dev/mapper/vg_temp/lv_swap
sudo lvdisplay
sudo mkswap /dev/vg_temp/lv_swap
sudo lvs
cd /var/lib/
lib
li
lt
ll
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
cd /
ls
mkdir work
sudo mkdir work
sudo mount /dev/vg_datos/lv_workareas /work
df -h
sudo swapon /dev/vg_temp/lv_swap
free -h
sudo systemctl restart docker
sudo systemctl status docker
history
nano Punto_A.sh
cd ~/RTA_EXAMEN_$(date +%Y%m%d)
sudo nano Punto_A.sh
nano Punto_A.sh
chmod +x Punto_a.sh
ls -l
chmod +x Punto_A.sh
git init
git add Punto_A.sh 
git commit -m "puntoA"
git config --global user.name  "Zegarra" 
git config --global user.email "agustinzegarrautn@gmail.com" 
04$ git add Punto_A.sh 
git add Punto_A.sh
git commit -m "hola"
git push
git remote add origin https://github.com/AgustinZegarra/UTNFRA_SO_2do_TP_-Zegarra-.git
git push
git push -u origin main
git push -u origin master
git push -u origin main
git push -u origin master
git remote set-url origin git@github.com:AgustinZegarra/UTNFRA_SO_2do_TP_-Zegarra-.git
git push
git push -u origin master
git branch -m main
git remote add origin https://github.com/AgustinZegarra/UTNFRA_SO_2do_TP_-Zegarra-.git
git push -u origin master
git push -u origin main
git remote -v
git remote set-url origin https://github.com/AgustinZegarra/UTNFRA_SO_2do_TP_-Zegarra-.git
git branch
git push -u origin main
git remote set-url origin https://github.com/AgustinZegarra/UTNFRA_SO_2do_TP_-Zegarra-.git
git push -u origin main
git init
echo "# UTNFRA_SO_2do_TP_-Zegarra-" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/AgustinZegarra/UTNFRA_SO_2do_TP_-Zegarra-.git
git push -u origin main
git add Punto_A.sh 
git commit -m "hola"
git status
ls -l Punto_A.sh
git ls-files
git push
cd ~/RTA_EXAMEN_20250704
ls
touch AltaUser-Groups.sh
chmod +x AltaUser-Groups.sh
ls -l AltaUser-Groups.sh
nano AltaUser-Groups.sh
sudo chmod 755 /usr/local/bin/ZegarraAltaUser-Groups.sh
sudo mv AltaUser-Groups.sh /usr/local/bin/ZegarraAltaUser-Groups.sh
sudo chmod 755 /usr/local/bin/ZegarraAltaUser-Groups.sh
ls -l /usr/local/bin/ZegarraAltaUser-Groups.sh
/usr/local/bin/ZegarraAltaUser-Groups.sh
sudo /usr/local/bin/ZegarraAltaUser-Groups.sh vagrant bash_script/Lista_Usuarios.txt
nano AltaUser-Groups.sh
sudo sed -i '1s!.*#!\#!/bin/bash!' /usr/local/bin/ZegarraAltaUser-Groups.sh
sudo sed -i 's/\r$//' /usr/local/bin/ZegarraAltaUser-Groups.sh
sudo nano /usr/local/bin/ZegarraAltaUser-Groups.sh
~
sudo nano /usr/local/bin/ZegarraAltaUser-Groups.sh
cat > lista.txt <<EOF
# usuarios de prueba
juan:devs
maria:admins
EOF

su - zegarra
sudo /usr/local/bin/ZegarraAltaUser-Groups.sh vagrant lista.txt
sudo nano /usr/local/bin/ZegarraAltaUser-Groups.sh
sudo chmod 755 /usr/local/bin/ZegarraAltaUser-Groups.sh
sudo /usr/local/bin/ZegarraAltaUser-Groups.sh vagrant lista.txt
sudo nano /usr/local/bin/ZegarraAltaUser-Groups.sh
y
cd
sudo /usr/local/bin/zegarraAltaUser.sh vagrant lista.txt
sudo /usr/local/bin/ZegarraAltaUser-Groups.sh vagrant lista.txt
cd ~/RTA_EXAMEN_20250704
sudo /usr/local/bin/ZegarraAltaUser-Groups.sh vagrant lista.txt
sudo /usr/local/bin/ZegarraAltaUser-Groups.sh vagrant   /home/zegarra/RTA_EXAMEN_20250704/lista.txt
sudo rm -f /usr/local/bin/AltaUser-Groups.sh
sudo tee /usr/local/bin/AltaUser-Groups.sh > /dev/null << 'EOF'

sudo tee /usr/local/bin/AltaUser-Groups.sh > /dev/null << 'EOF'
#!/usr/bin/env bash
[[ $EUID -ne 0 ]] && echo "Debe ejecutarse como root" && exit 1
[[ $# -ne 2 ]] && echo "Uso: \$0 usuario_plantilla lista_usuarios" && exit 1
TPL=\$1
LIST=\$2
[[ ! -r \$LIST ]] && echo "Archivo \$LIST no encontrado" && exit 1
PASSHASH=\$(getent shadow "\$TPL" | cut -d: -f2)
while IFS=: read -r USER GRP; do
  [[ \$USER =~ ^# ]] && continue
  getent group "\$GRP" >/dev/null || groupadd "\$GRP"
  id "\$USER" &>/dev/null || useradd -m -s /bin/bash -g "\$GRP" -p "\$PASSHASH" "\$USER"
done < "\$LIST"

EOF

sudo chmod 755 /usr/local/bin/AltaUser-Groups.sh
sudo /usr/local/bin/AltaUser-Groups.sh vagrant /ruta/a/tu/lista.txt
cd ~/RTA_EXAMEN_20250704
pwd
sudo /usr/local/bin/AltaUser-Groups.sh vagrant /home/zegarra/RTA_EXAMEN_20250704/lista.txt
cp /usr/local/bin/AltaUser-Groups.sh        RTA_Examen_$(date +%Y%m%d)/Punto_B.sh
cp ~/RTA_EXAMEN_20250704/lista.txt           RTA_Examen_$(date +%Y%m%d)/lista.txt
chmod +x RTA_Examen_$(date +%Y%m%d)/Punto_B.sh
cat > Punto_B.sh << 'EOF'
#!/bin/bash
[[ $EUID -ne 0 ]] && echo "Debe ejecutarse como root" && exit 1
USR_BASE=$1
LISTA=$2
while IFS=: read -r USUARIO GRUPO; do
  [[ $USUARIO =~ ^# ]] && continue
  getent group "$GRUPO" >/dev/null || groupadd "$GRUPO"
  id "$USUARIO" >/dev/null || \
    useradd -m -s /bin/bash -g "$GRUPO" "$USUARIO"
  echo "$USUARIO:$(grep -Po '^'$USR_BASE':\K[^:]+' /etc/shadow)" \
    | chpasswd -e
done < "$LISTA"
EOF

chmod +x Punto_B.sh
cp ~/RTA_EXAMEN_20250704/lista.txt .
sudo ./Punto_B.sh vagrant lista.txt
getent group desarrollo
getent passwd programador3
cd ~/UTNFRA_SO_2do_TP_-Zegarra-   # tu repo clonado
git add RTA_Examen_$(date +%Y%m%d)/Punto_B.sh         RTA_Examen_$(date +%Y%m%d)/lista.txt
git commit -m "Punto B: script de alta de usuarios y grupos"
git push
cd ~/UTNFRA_SO_2do_TP_-Zegarra-
ls -R
git add RTA_Examen_$(date +%Y%m%d)/Punto_B.sh
git commit -m "Agrego script Punto B (alta usuarios y grupos)"
git push
git status
git add RTA_Examen_$(date +%Y%m%d)/Punto_B.sh
git status        # ahora debe verse en “changes to be committed”
git commit -m "Agrego Punto B: alta de usuarios y grupos"
git push
# Desde ~/RTA_EXAMEN_20250704
git add AltaUser-Groups.sh Punto_B.sh lista.txt
git commit -m "Agrego Punto B: alta de usuarios y grupos"
git push
git push -u origin main
cd <Path-Repo>/202406/docker/
cd <Path-Repo>/202406/docker
cd
# 1. Ve a tu carpeta de trabajo
cd ~/RTA_EXAMEN_20250704/202406/docker
# 2. Verifica que estés ahí y que veas index.html
pwd
ls
# 3. Edita index.html con nano (o tu editor favorito)
nano index.html
# — cambia los datos PLACEHOLDER por tu nombre/apellido, guarda y sal (Ctrl+O, Enter, Ctrl+X)
# 4. Crea el Dockerfile en esa carpeta:
cat > Dockerfile << 'EOF'
FROM nginx:stable
COPY index.html /usr/share/nginx/html/index.html
EOF

# 5. Construye y etiqueta la imagen (reemplaza 'web1-zegarra' si quieres otro nombre)
docker build -t agustinzegarra/web1-zegarra .
# 6. Haz login en Docker Hub
docker login
# 7. Súbela a Docker Hub
docker push agustinzegarra/web1-zegarra
# 8. Crea el script de ejecución dentro de la misma carpeta
cat > run.sh << 'EOF'
#!/bin/bash
docker run -d -p 8080:80 agustinzegarra/web1-zegarra
EOF

chmod +x run.sh
# 9. Comprueba que todo está:
ls -l
su - zegarzegarra
cd ~/RTA_EXAMEN_20250704/202406/docker
ls  zearazegr
ls
cd ~/RTA_EXAMEN_20250704
s 
ls -1
cd /var/lib
ll
_20250704': No such file or directory
su - zegarra
cd ~/RTA_EXAMEN_$(date +%Y%m%d)/202406/docker
mkdir -p ~/RTA_EXAMEN_$(date +%Y%m%d)/202406/docker
cd ~/RTA_EXAMEN_$(date +%Y%m%d)/202406/docker
cp ~/RTA_EXAMEN_$(date +%Y%m%d)/index.html
cp ~/RTA_EXAMEN_$(date +%Y%m%d)/index.html .
find . -type f -name index.html
mkdir -p 202406/docker
ls -l
find ~/RTA_EXAMEN_20250704 -maxdepth 3 -type f -name index.html
[200~nano index.html
cd ~/RTA_EXAMEN_20250704/202406/docker
nano index.html
FROM nginx:stable-alpine
COPY index.html /usr/share/nginx/html/index.html
nano Dockerfile
docker build -t web1-Zegarra .
nano Dockerfile
docker build -t web1-Zegarra .
sudo usermod -aG docker $USER
docker version
nano index.html
cat <<EOF > Dockerfile
FROM nginx:stable-alpine
COPY index.html /usr/share/nginx/html/index.html
EOF

cat <<EOF > Dockerfile
FROM nginx:stable-alpine
COPY index.html /usr/share/nginx/html/index.html
EOF

nano Dockerfile
docker build -t web1-zegarra .
docker login
docker tag web1-zegarra agustinzegarra/web1-zegarra:latest
docker push agustinzegarra/web1-zegarra:latest
history | grep -E 'docker (build|tag|push)' > pasos_docker.txt
docker build -t web1-zegarra .
docker tag web1-zegarra agustinzegarra/web1-zegarra:latest
docker push agustinzegarra/web1-zegarra:latest
#!/usr/bin/env bash
set -euo pipefail
echo "1) Construyendo la imagen localmente…"
docker build -t web1-zegarra .
echo "2) Etiquetando la imagen para Docker Hub…"
docker tag web1-zegarra agustinzegarra/web1-zegarra:latest
echo "3) Subiendo la imagen a Docker Hub…"
docker push agustinzegarra/web1-zegarra:latest
echo "¡Hecho! La imagen está en docker.io/agustinzegarra/web1-zegarra:latest"
cd ~/RTA_EXAMEN_20250704/202406/docker
touch Punto_C.sh
chmod +x Punto_C.sh
nano Punto_c.sh
./Punto_C.sh
lv
lv
newgrp docker
git add Punto_C.sh
git commit -m "Agrego script Punto_C.sh para build-tag-push de la imagen"
git push origin main
cd <Path-Repo>/202406/ansible
ansible-galaxy init parcial
cd ~/RTA_EXAMEN_20250704/202406/ansible
cd ~/RTA_EXAMEN_20250704/202406
mkdir -p ansible
cd ansible
ansible-galaxy init parcial
cd ~/RTA_EXAMEN_20250704/202406/ansible/parcial/templates
cat > datos_alumno.txt.j2 << 'EOF'
Nombre: {{ alumno.nombre }} {{ alumno.apellido }}
División: {{ alumno.division }}
EOF

cat > datos_equipo.txt.j2 << 'EOF'
IP: {{ equipo.ip }}
Distribución: {{ equipo.distro }}
Cantidad de Cores: {{ equipo.cores }}
EOF

cd ~/RTA_EXAMEN_20250704/202406/ansible/parcial/tasks
cat > main.yml << 'EOF'
---
- name: Asegurar directorio de salida
  file:
    path: /tmp/salida
    state: directory
    mode: '0755'

- name: Desplegar datos de alumno
  template:
    src: datos_alumno.txt.j2
    dest: /tmp/salida/datos_alumno.txt

- name: Desplegar datos de equipo
  template:
    src: datos_equipo.txt.j2
    dest: /tmp/salida/datos_equipo.txt
EOF

cd ~/RTA_EXAMEN_20250704/202406/ansible
cat > deploy.yml << 'EOF'
- hosts: localhost
  gather_facts: false
  vars:
    alumno:
      nombre: "Agustín"
      apellido: "Zegarra"
      division: "202406"
    equipo:
      ip: "{{ ansible_default_ipv4.address }}"
      distro: "{{ ansible_distribution }} {{ ansible_distribution_version }}"
      cores: "{{ ansible_processor_count }}"
  roles:
    - parcial
EOF

ansible-playbook deploy.yml
sed -i 's/gather_facts: false/gather_facts: true/' deploy.yml
ansible-playbook deploy.yml
ls -l /tmp/salida
cat /tmp/salida/datos_alumno.txt
cat /tmp/salida/datos_equipo.txt
cd ~/RTA_EXAMEN_20250704/202406
git checkout -b parcial_ansible
git add ansible/parcial
git commit -m "Add Ansible role 'parcial' to render datos_alumno y datos_equipo"
git push origin parcial_ansible
historia -a
history -a
cd ~/UTNFRA_SO_2do_TP_Zegarra
cd ~
git clone <URL-de-tu-repo> UTNFRA_SO_2do_TP_Zegarra
cd ~
git clone https://github.com/AgustinZegarra/UTNFRA_SO_2do_TP_-Zegarra-.git UTNFRA_SO_2do_TP_Zegarra
history -a
cd ~/UTNFRA_SO_2do_TP_Zegarra
cp -r ~/RTA_EXAMEN_20250704/202406 ./202406
cp -r ~/RTA_EXAMEN_$(date +%Y%m%d) ./RTA_Examen_$(date +%Y%m%d)
