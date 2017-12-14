Device files for building TWRP for HTC Ocean

DEVICE INFORMATION FOLLOWS
--------------------------
htc_ocnwhl:/ # cat /proc/partitions
major minor  #blocks  name

   1        0       8192 ram0
   1        1       8192 ram1
   1        2       8192 ram2
   1        3       8192 ram3
   1        4       8192 ram4
   1        5       8192 ram5
   1        6       8192 ram6
   1        7       8192 ram7
   1        8       8192 ram8
   1        9       8192 ram9
   1       10       8192 ram10
   1       11       8192 ram11
   1       12       8192 ram12
   1       13       8192 ram13
   1       14       8192 ram14
   1       15       8192 ram15
 253        0    1908188 zram0
   8       16       4096 sdb
   8       17       4052 sdb1
   8        0   61800448 sda
   8        1         40 sda1
   8        2      65536 sda2
   8        3      65536 sda3
   8        4    4169728 sda4
   8        5     319488 sda5
   8        6      61440 sda6
   8        7   57106432 sda7
   8        8      12204 sda8
   8       32       4096 sdc
   8       33       4052 sdc1
   8       48     458752 sdd
   8       49       1024 sdd1
   8       50        512 sdd2
   8       51        512 sdd3
   8       52       2048 sdd4
   8       53        512 sdd5
   8       54        512 sdd6
   8       55        512 sdd7
   8       56        512 sdd8
   8       57        512 sdd9
   8       58        128 sdd10
   8       59       1024 sdd11
   8       60      65536 sdd12
   8       61     107520 sdd13
   8       62       5120 sdd14
   8       63       1024 sdd15
 259        5        256 sdd16
 259        8      20480 sdd17
 259        9        256 sdd18
 259       10      16384 sdd19
 259       11       2048 sdd20
 259       12        128 sdd21
 259       13     229376 sdd22
 259       14       2772 sdd23
   8       64     163840 sde
   8       65       1024 sde1
   8       66       2048 sde2
   8       67       2048 sde3
   8       68          8 sde4
   8       69      32768 sde5
   8       70        128 sde6
   8       71          4 sde7
   8       72      46080 sde8
   8       73       1024 sde9
   8       74      20480 sde10
   8       75      30720 sde11
   8       76       1284 sde12
   8       77         64 sde13
   8       78       1024 sde14
   8       79        512 sde15
 259        0      10240 sde16
 259        1         32 sde17
 259        2          4 sde18
 259        3       1024 sde19
 259        4       8192 sde20
 259        6       2048 sde21
 259        7       3040 sde22
   8       80      57344 sdf
   8       81         16 sdf1
   8       82        256 sdf2
   8       83       2048 sdf3
   8       84          4 sdf4
   8       85       4096 sdf5
   8       86      24256 sdf6
   8       87      10240 sdf7
   8       88          4 sdf8
   8       89      10240 sdf9
   8       90       1024 sdf10
   8       91       5116 sdf11
 179        0   61407232 mmcblk0
 179        1   61390848 mmcblk0p1
 252        0    4104664 dm-0
 252        1   57106432 dm-1
 
 htc_ocnwhl:/ # cat /proc/filesystems
nodev   sysfs
nodev   rootfs
nodev   tmpfs
nodev   bdev
nodev   proc
nodev   cpuset
nodev   cgroup
nodev   configfs
nodev   debugfs
nodev   tracefs
nodev   sockfs
nodev   pipefs
nodev   ramfs
nodev   devpts
        ext3
        ext4
        ext2
        vfat
        vfat_sd
        msdos
nodev   ecryptfs
nodev   sdcardfs
        fuseblk
nodev   fuse
nodev   fusectl
nodev   pstore
nodev   selinuxfs
nodev   functionfs
        texfat

htc_ocnwhl:/dev/block/platform/soc/1da4000.ufshc/by-name # ls -al
total 0
drwxr-xr-x 2 root root 1360 1970-02-02 02:00 .
drwxrwxrwx 4 root root 1520 1970-02-02 02:00 ..
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 abl -> /dev/block/sdd11
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 adsp -> /dev/block/sdd17
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 apdp -> /dev/block/sdd16
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 apppreload -> /dev/block/sda5
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 bluetooth -> /dev/block/sdd15
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 board_info -> /dev/block/sdf1
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 boot -> /dev/block/sda3
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 cache -> /dev/block/sdd22
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 carrier -> /dev/block/sde8
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 cmnlib -> /dev/block/sdd8
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 cmnlib64 -> /dev/block/sdd9
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 control -> /dev/block/sde17
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 cota -> /dev/block/sda6
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 ddr -> /dev/block/sdd1
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 devcfg -> /dev/block/sdd10
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 devinfo -> /dev/block/sdf4
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 devlog -> /dev/block/sde11
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 dip -> /dev/block/sdf10
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 dpo -> /dev/block/sdf8
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 dsp -> /dev/block/sdd19
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 extra -> /dev/block/sde13
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 fataldevlog -> /dev/block/sde10
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 frp -> /dev/block/sde15
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 fsc -> /dev/block/sde14
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 fsg -> /dev/block/sdf3
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 hosd -> /dev/block/sdd12
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 hvbmeta -> /dev/block/sdf6
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 hyp -> /dev/block/sdd7
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 keymaster -> /dev/block/sdd2
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 limits -> /dev/block/sde18
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 local -> /dev/block/sde12
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 lockbooter -> /dev/block/sdd3
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 logfs -> /dev/block/sde20
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 mfg -> /dev/block/sdf2
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 misc -> /dev/block/sde1
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 modemst1 -> /dev/block/sde2
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 modemst2 -> /dev/block/sde3
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 mota -> /dev/block/sde9
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 msadp -> /dev/block/sdd18
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 padding0 -> /dev/block/sda1
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 persist -> /dev/block/sde5
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 pg1fs -> /dev/block/sdf5
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 pmic -> /dev/block/sdd6
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 radio -> /dev/block/sdd13
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 ramdump -> /dev/block/sde16
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 recovery -> /dev/block/sda2
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 reserve0 -> /dev/block/sda8
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 reserve3 -> /dev/block/sdd23
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 reserve4 -> /dev/block/sde22
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 reserve5 -> /dev/block/sdf11
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 rpm -> /dev/block/sdd5
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 sec -> /dev/block/sde6
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 skylink -> /dev/block/sde7
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 sp1 -> /dev/block/sdf9
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 ssd -> /dev/block/sde4
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 sti -> /dev/block/sde21
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 storsec -> /dev/block/sdd21
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 system -> /dev/block/sda4
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 tool_diag -> /dev/block/sdf7
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 toolsfv -> /dev/block/sde19
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 tz -> /dev/block/sdd4
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 userdata -> /dev/block/sda7
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 venus -> /dev/block/sdd20
lrwxrwxrwx 1 root root   16 1970-02-02 02:00 wcnss -> /dev/block/sdd14
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 xbl -> /dev/block/sdb1
lrwxrwxrwx 1 root root   15 1970-02-02 02:00 xblbak -> /dev/block/sdc1
