Device configuration for the Lenovo TB-8504f

Copyright (C) 2017 The LineageOS Project

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

------------------------------------------------------------------

* Description

  This repository is for LineageOS on Lenovo Tab 4 (tb8504f)

* How To Build LineageOS for Lenovo Tab 4 

  - Make a workspace

mkdir lineage-15.1
cd lineage-15.1

  - Do repo init & sync

repo init -u git://github.com/LineageOS/android.git -b lineage-15.1

  - Create .repo/local_manifests/roomservice.xml with the following content:

```
<?xml version="1.0" encoding="UTF-8"?>
<manifest>

  <project name="darran-kelinske-fivestars/android_device_lenovo_tb8504f" path="device/lenovo/tb8504f" remote="github" revision="lineage-15.1" />
  <project name="darran-kelinske-fivestars/android_kernel_lenovo_tb8504f" path="kernel/lenovo/tb8504f" remote="github" revision="lineage-15.1" />
  <project name="darran-kelinske-fivestars/android_vendor_lenovo_tb8504f" path="vendor/lenovo/tb8504f" remote="github" revision="lineage-15.1" />

</manifest>
```

repo sync

  - Copy proprietary vendor files

  There are two options to to that. Connect your device with adb enabled and run:

./extract-files.sh

  Or if you have the system image unpacked on your disk, then simply run:

    STOCK_ROM_DIR=/path/to/system ./extract-files.sh

  - Setup environment

. build/envsetup.sh

  - Build cm15

brunch tb8504f
