#!/bin/bash

for i in $(cat platforms); do
  ssh qa@${i} 'ls -l'
  #ssh qa@${i} 'sudo apt update; sudo apt -y upgrade'
     
 
done
