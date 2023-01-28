#!/bin/bash

var="file1.txt file2.txt"

ls -l "${var}"
#ls -l  "file1.txt file2.txt"

ls -l ${var}
#ls - l file1.txt file2.txt

