--- 
layout: post 
title: New Way To Install OpenStack Client 
date: '2021-11-26 19:35:31.61 -0400' 
--- 
A while back I was provided these instructions for getting an OpenStack Python client running in a virtual 
environment (venv) in Python 3. They have proven very useful to me (no needing to read the whole image into 
memory first), so I am posting them here for posterity. Forgive me if I have posted these before, still trying 
to catch up from my time slacking off. 

### Using Ubuntu 20.04

1. apt install python3-pip
2. apt install python3.8-venv
3. python3 -m venv .venv
4. source .venv/bin/activate
5. pip install wheel
6. pip install -U pip
7. pip install python-openstackclient

And then you can source your openrc file and Bob is, indeed, your uncle.
