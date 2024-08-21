#!/usr/bin/bash
module load aspera

upload_dir=~/shared/projects/BioCrusts/MossCrust/moss_mycobiome/aspera_upload
remote=subasp@upload.ncbi.nlm.nih.gov:uploads/kkell060_ucr.edu_W075M5hs
key=/opt/linux/rocky/8.x/x86_64/pkgs/aspera/4.2.6.393/etc/aspera_id_rsa.openssh

ascp -i $key -QT -l100m -k1 -d $upload_dir $remote
