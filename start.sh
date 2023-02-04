#!/bin/sh

#rmmod nvme nvme_tcp nvme_core nvme_fabrics
modprobe nvme_core
modprobe nvme
modprobe nvme_fabrics

modprobe nvme_tcp
app_port=4420
subnqn=nqn.2014-08.org.nvmexpress.discovery
ipaddrserver=127.0.0.2

nvme discover -t tcp -a $ipaddrserver -s $app_port
nvme connect -t tcp -a $ipaddrserver -s $app_port -n $subnqn

nvme disconnect -n $subnqn
{
  "hosts": [],
  "ports": [
    {
      "addr": {
        "adrfam": "ipv4",
        "traddr": "127.0.0.2",
        "treq": "not specified",
        "trsvcid": "4420",
        "trtype": "tcp"
      },
      "portid": 1,
      "referrals": [],
      "subsystems": [
        "loop0"
      ]
    }
  ],
  "subsystems": [
    {
      "allowed_hosts": [],
      "attr": {
        "allow_any_host": "1",
        "cntlid_max": "65519",
        "cntlid_min": "1",
        "firmware": "6.2.0-rc",
        "ieee_oui": "0x000000",
        "model": "Linux",
        "pi_enable": "0",
        "qid_max": "128",
        "serial": "a87e7a41bcc248283fde",
        "version": "1.3"
      },
      "namespaces": [
        {
          "device": {
            "nguid": "00000000-0000-0000-0000-000000000000",
            "path": "/dev/loop0",
            "uuid": "d30f23b9-4cea-4b58-b52b-d1a62a3b9f83"
          },
          "enable": 1,
          "nsid": 1
        }
      ],
      "nqn": "loop0"
    }
  ]
}
