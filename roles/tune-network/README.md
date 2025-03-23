Role Name
=========

tune_network

Disable TCP Segementation Offload for e1000 network adapter

essentially does same as: "ethtool -K eth0 tso off gro off gso off"


Purpose
--------------
For now, I am seeing Hardware Resets on the e1000 adapter under load.  Disabling
TCP Segmentation Offload seems to resolve this issue. 

Example error message:

[222938.756344] e1000e 0000:00:1f.6 eth0: Detected Hardware Unit Hang:
                  TDH                  <40>
                  TDT                  <66>
                  next_to_use          <66>
                  next_to_clean        <40>
                buffer_info[next_to_clean]:
                  time_stamp           <10d4507f4>
                  next_to_watch        <41>
                  jiffies              <10d453a40>
                  next_to_watch.status <0>
                MAC Status             <40080083>
                PHY Status             <796d>
                PHY 1000BASE-T Status  <3800>
                PHY Extended Status    <3000>
                PCI Status             <10>
[222939.204161] e1000e 0000:00:1f.6 eth0: Reset adapter unexpectedly


Requirements
------------

system must be using e1000 driver for this to be relevant

Role Variables
--------------

None

Dependencies
------------

ethtool command must be installed

Example Playbook
----------------

    - role: tune-network
      tags: ['tune-network']


License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
