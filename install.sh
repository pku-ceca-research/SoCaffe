#!/usr/bin/env sh

rm -rf sd_card

cd SoGEMM
tar xvf build.tar.gz

cd ..
cp -r SoGEMM/build.zed.hw/sd_card ./
cp -r SoGEMM/build.zed.hw/lib ./sd_card
cp -r caffe ./sd_card

tar xvf third_party.tar.gz
cp -r third_party/lib/* sd_card/lib

rm -rf third_party
rm -rf SoGEMM/build.zed.hw
