import os
from unitypackage_extractor.extractor import extractPackage
from pathlib import Path
from os import listdir


# windows 
# package_location = str(Path.home()) + r"\AppData\Roaming\Unity\Asset Store-5.x"
# linux 
package_location = str(Path.home()) + r"/.local/share/unity3d/Asset Store-5.x"
# set your destination folder here
# default:
# base_destination = 
base_destination = os.path.join(str(Path.home()), r"unitypackages")
Path(base_destination).mkdir(exist_ok=True)
# print(package_location)
# print(listdir(package_location))

for vendor in listdir(package_location):
    ven_dir = os.path.join(package_location, vendor)
    dest_ven_dir = os.path.join(base_destination, vendor)
    Path(dest_ven_dir).mkdir(exist_ok=True)
    # os.mkdir(dest_ven_dir)
    print(vendor + ":")
    for p in listdir(ven_dir):
        pac_dir = os.path.join(ven_dir, p)
        dest_pac_dir = os.path.join(dest_ven_dir, p)
        Path(dest_pac_dir).mkdir(exist_ok=True)
        # os.mkdir(dest_pac_dir)
        print("\t" + p)
        # extract all packages in package
        for f in listdir(pac_dir):
            pac_file = os.path.join(pac_dir, f)
            dest_pac_folder = os.path.join(dest_pac_dir, f[:-13])
            Path(dest_pac_folder).mkdir(exist_ok=True)
            print("\t\t" + f)
            print("\t\t(" + pac_file + ")")
            print("\t\t[" + dest_pac_folder + "]")
            extractPackage(pac_file, outputPath=dest_pac_folder)