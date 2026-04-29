# PVE_VM_Scripts
Use this scripts, you can create pve vm very convenient.

## Host Info
OS: Ubuntu 22.04 / NisOS 25.11

## Prepare Host Env 
- Ubuntu 22.04
Install python tools
```bash
sudo apt-get install python3 python3-pip
```
- NixOS 25.11
Active the shell env
```bash
direnv allow .
```

## Install Python packages
```bash
pip install -r requirements.txt
```

## Prepare Files for Scripts
- images: copy `img` files or `iso` files to images
```bash
mkdir images
cp -r local/test.img ./images
```

- configs: copy `vm_config_temp.yaml` to `vm_config.yaml` 
```bash
cp vm_config_temp.yaml vm_config.yaml
```

## Install fnOS
The scripts will find vm_config.yaml and set VMs
```bash
python main.py
```