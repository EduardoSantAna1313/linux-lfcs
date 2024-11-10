## Autostart vm

```sh
virsh autostart TestVM
```

# List all VMs

```sh
virsh list --all
```

## Start a VM

```sh
virsh start VM1
```

## Destroy

The destroy command is like pushing the poweroff button

```sh
virsh destroy VM1
```

## Remove

To completely remove the VM:

```sh
virsh undefine VM1
```

## Create and run a VM from XML

```sh
virsh create /opt/myconfig.xml
```

`myconfig.xml`:

```xml
<domain type="qemu">
  <name>VM2</name>
  <memory unit="MiB">125</memory>
  <vcpu>1</vcpu>
  <os>
    <type arch='x86_64'>hvm</type>
  </os>
</domain>
```

## Change the memory

Afect only on next boot:

```sh
virsh setmaxmem VM2 80M --config
```

## Check the infos

sudo virsh dominfo VM2

```sh
sudo virsh dominfo VM2
```

## Create new VM from params

```sh
virt-install --name kk-ubuntu \
    --memory 1024 \
    --vcpus 1 \
    --network default \
    --graphics none \
    --disk /var/lib/libvirt/images/ubuntu-22.04-minimal-cloudimg-amd64.img \
    --import \
    --os-variant ubuntu22.04
```