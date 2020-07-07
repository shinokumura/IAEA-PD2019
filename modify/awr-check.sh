ls ../data/g-iaea-pd-2019/* | xargs head -4 > awr
sed -i '1s/^/\n/' awr
awk 'NR%6==0' awr
