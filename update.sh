#!/bin/bash

rsync -a  $(dirname $(realpath $0))/root/ ~/
