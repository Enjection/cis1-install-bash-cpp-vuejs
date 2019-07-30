#!/bin/bash

read -p "Enter a directory: " -e dir

dir=`realpath $dir`

rm -rf $dir
mkdir $dir

export cis_base_dir=$dir

git clone https://github.com/tomsksoft-llc/cis1-core-bash.git $cis_base_dir
git clone https://github.com/Enjection/cis1-install-bash-cpp-vuejs $cis_base_dir/jobs/maintenance
git clone https://github.com/tomsksoft-llc/cis1-webui-native-front-vuejs.git $cis_base_dir/jobs/maintenance/build_vuejs_webui/cis1-webui-native-front-vuejs
git clone https://github.com/tomsksoft-llc/cis1-webui-native-srv-cpp.git $cis_base_dir/jobs/maintenance/build_cpp_websrv/cis1-webui-native-srv-cpp

mkdir $cis_base_dir/webui

cp $cis_base_dir/jobs/maintenance/build_cpp_websrv/cis1-webui-native-srv-cpp/example_config.ini $cis_base_dir/webui/config.ini

if [ "x$EDITOR" = "x" ]
then
    nano $cis_base_dir/webui/config.ini
else
    $EDITOR $cis_base_dir/webui/config.ini
fi

while true; do
    read -p "Do you wish to compile and run webui? [y/n] " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

source run.sh
