Bootstrap:docker  
From:ubuntu:latest  

%files
/mnt/scratch/dolsonem/containerized_avida_test $SINGULARITY_ROOTFS/containerized_avida_test

%post  
echo "This section happens once after bootstrap to build the image."  
apt-get update
apt-get --assume-yes install criu

mkdir -p /mnt/home
mkdir -p /mnt/research
mkdir -p /mnt/dfs17
mkdir -p /mnt/ffs17
mkdir -p /mnt/local
mkdir -p /mnt/ls15
mkdir -p /opt/software
mkdir -p /code  


