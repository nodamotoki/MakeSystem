# MakeSystem

## 概要

中・大規模開発のためのメイクシステムのサンプル

## 使い方

    $ cd ~/work/MakeSysmte/Build
    $ export BASE_DIR=~/work/MakeSystem
    $ make

## フォルダ・ファイル構成

    MakeSystem
    |-- Build
    |   |-- Config
    |   |   |-- Build.mk
    |   |   `-- Config.mk
    |   |-- Debug
    |   |-- Makefile
    |   `-- Release
    |-- Include
    |   |-- Core
    |   |   `-- PublicMain.h
    |   |-- Module0
    |   |   `-- PublicModule0.h
    |   `-- Module1
    |       `-- PublicModule1.h
    |-- README.md
    `-- Src
        |-- Core
        |   |-- Main.cpp
        |   |-- Main.h
        |   `-- Makefile
        |-- Makefile
        |-- Module0
        |   |-- Include
        |   |   |-- PrivateSub00.h
        |   |   `-- PrivateSub01.h
        |   |-- Makefile
        |   |-- Module0.cpp
        |   |-- Module0.h
        |   |-- Sub00
        |   |   |-- Makefile
        |   |   |-- Sub00.cpp
        |   |   `-- Sub00.h
        |   `-- Sub01
        |       |-- Makefile
        |       |-- Sub01.cpp
        |       `-- Sub01.h
        `-- Module1
            |-- Include
            |   |-- PrivateSub10.h
            |   `-- PrivateSub11.h
            |-- Makefile
            |-- Module1.cpp
            |-- Module1.h
            |-- Sub10
            |   |-- Makefile
            |   |-- Sub10.cpp
            |   `-- Sub10.h
            `-- Sub11
                |-- Makefile
                |-- Sub11.cpp
                `-- Sub11.h


## 機能

* 多段メイクに対応(再帰的メイク)
* Build ディレクトリで make と打つとシステム全体をビルド
* 各ソースディレクトリで make と打つとそのディレクトリとサブフォルダだけメイクする
* ソースとバイナリのフォルダは独立
* ただし make を実行したディレクトリにある Makefile に書かれた TARGET だけはそのディレクトリに書き出す。
* 依存関係もちゃんと見ているので、基本的には変更があったファイルだけメイクする。
* make clean で生成物をきれいに削除
* make と打つと Build/Release の下にバイナリを生成する。
* make BUILD_TYPE=Debug とすると Build/Debug の下。(ただし今は生成されるものは同じ)
* make VERBOSE=1 で表示の量が増える。(make Q= でもよい)
* メモ: make Q= SHELL="/bin/sh -x" とすると何やっているかが、よりわかりやすい。
* サブディレクトリ毎の成果物は ar でアーカイブされるが thin archive なので速いしディスクスペースも節約。

