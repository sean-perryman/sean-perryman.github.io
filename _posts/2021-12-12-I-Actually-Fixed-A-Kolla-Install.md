--- 
layout: post 
title: I Actually Fixed A Kolla Install 
date: '2021-12-12 16:28:48.84 -0400' 
--- 
This is actually really exciting for me, as it marks the first time during an OpenStack test that I actually was 
able to fix the problem rather than just deleting the environment.

I did a single-node install of Kolla for messing around. I ran the init-once script and was able to provision an 
instance without issue. Fan-fucking-tastic. 

I went ahead and added 3 more nodes of the same spec just to see if I could. The deployscript errored out at the 
end for a mariadb issue. I didn't think a lot of it and just ran the script again. Same failure. 

This time, I took a second to look at the red text. It told me to run 

> kolla-ansible mariadb_recovery

to fix the problem. Fucking sweet, that is really helpful! I ran the script and it said something I didn't 
immediately cotton onto "no inventory file passed", and the script just ended up finishing and not doing 
anything.

Turns out, the -i flag that I blindly pass my 'multinode' file to the other kolla-ansible 
scripts/playbooks/whatever is for the inventory file, which is my 'multinode' file. 

> kolla-ansible -i multinode mariadb_recovery

ran and apparently did whatever it was supposed to do, because it finished and I re-ran the deploy script and 
all is well. AWESOME! 

This makes me super happy and really ready to take on a more challenging deployment (hyperconverged with ceph!)
