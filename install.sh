#!/bin/bash

rm -rf cis1
mkdir cis1

git clone https://github.com/tomsksoft-llc/cis1-core-bash.git cis1
git clone https://github.com/Enjection/cis1-install-bash-cpp-vuejs cis1/jobs/maintenance
git clone https://github.com/tomsksoft-llc/cis1-webui-native-front-vuejs.git cis1/jobs/maintenance/build_vuejs_webui/cis1-webui-native-front-vuejs
git clone https://github.com/tomsksoft-llc/cis1-webui-native-srv-cpp.git cis1/jobs/maintenance/build_cpp_websrv/cis1-webui-native-srv-cpp
