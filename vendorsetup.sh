git clone https://android.googlesource.com/platform/external/googletest/ -b /android-12.1.0_r4 external/googletest

# Fix torch
mkdir /torch
ln -s /sys/class/torch/torch/torch_level /torch/torch_level
echo 1 > /torch/torch_level
