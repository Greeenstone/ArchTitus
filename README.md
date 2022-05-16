# ArchTitus Installer Script
My customiyation to the script
## Boot Arch ISO

From initial Prompt type the following commands:

```
pacman -Sy git
git clone https://github.com/ChrisTitusTech/ArchTitus
cd ArchTitus
./archtitus.sh
```
## Dual Boot with windows
in advance use `cgdisk` to partition the disk  
**Attention** Naming is important
eg:
|  |size|    code  |  name/label |          
|--------|----|----------|-------------|        
|sda5    |1M  |    ef02  |  BIOSBOOT   |       
|sda6    |300M|    ef00  |  EFIBOOT    |      
|sda8    |100G|          |  ROOT       |   