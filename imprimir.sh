read -p "Enter destination: " folder
cd "$folder"
mkdir sys_info
cd sys_info
for i in {0..9}
do
    filename="File${i}.txt"
    echo $filename  
done

echo "Hostname: $(Hostname)" >> File0.txt
echo "Date: $(date)" >> File1.txt
echo "Who am I: $(whoami)" >> File2.txt
echo "Disk usage: $(df)" >> File3.txt
echo "Directory space usage: $(du)" >> File4.txt
echo "Memory and swap usage: $(free)" >> File5.txt
echo "Kernel info: $(uname)" >> File6.txt
echo "Calendar: $(cal)" >> File7.txt
echo "Current uptime: $(uptime)" >> File8.txt
echo "Memory info: $(cat /proc/meminfo)" >> File9.txt