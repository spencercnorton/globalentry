# Mount the 1TB NVMe drive to /mnt/1tb
sudo mount /dev/nvme0n1 /mnt/1tb

# Mount the 1TB USB drive to /mnt/cache
sudo mount /dev/sde2 /mnt/cache

# Mount the 40TB RAID array to /mnt/titan
sudo mount /dev/md0 /mnt/titan