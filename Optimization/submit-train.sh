#!/bin/sh

NBKGS=$1
MODEL=$2
NVARIABLES=$3
CHANNEL=$4

cd /afs/cern.ch/user/n/ntrevisa/work/CMSSW_8_0_5/src/

eval `scramv1 runtime -sh`

cd /afs/cern.ch/user/n/ntrevisa/work/CMSSW_8_0_5/src/MUCCA/Optimization/

`root -l -q Train.cxx\($NBKGS,$MODEL,$NVARIABLES,$CHANNEL,\"BDTG4,BDT4\"\)`

