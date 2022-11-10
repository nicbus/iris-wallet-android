#!/usr/bin/env bash

mkdir -p src/main/cpp

cat <<EOF >src/main/cpp/secrets.cpp
#include <jni.h>
#include <string>
extern "C"
JNIEXPORT jstring JNICALL
Java_Keys_btcFaucetApiKey(JNIEnv *env, jobject thiz) {
    std::string api_key = "";
    return env->NewStringUTF(api_key.c_str());
}
extern "C"
JNIEXPORT jstring JNICALL
Java_Keys_rgbFaucetApiKey(JNIEnv *env, jobject thiz) {
    std::string api_key = "";
    return env->NewStringUTF(api_key.c_str());
}
EOF
