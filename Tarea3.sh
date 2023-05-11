
#  Literal 1
cd ~/CSB/unix/sandbox

# Literal 2
ls -lh ../data/Marra2014_data.fasta
du -h ../data/Marra2014_data.fasta

# Literal 3
cp ../data/Marra2014_data.fasta my_file.fasta
ls

#Literal 4
grep -c isogroup00036 my_file.fasta
grep isogroup00036 my_file.fasta | wc -l

# Literal 5
cat my_file.fasta | tr -s ' ' ',' | head -n 3
cat my_file.fasta | tr -s ' ' ',' > my_file.fasta
cat my_file.fasta | tr -s ' ' ',' > my_file.tmp
mv my_file.tmp my_file.fasta

# Literal 6
grep '>' my_file.fasta | head -n 2
grep '>' my_file.fasta | cut -d ',' -f 4 | head -n 2
grep '>' my_file.fasta | cut -d ',' -f 4 | sort | uniq | wc -l
grep -o 'isogroup[[:digit:]]\+' my_file.fasta
grep -o 'isogroup[[:digit:]]\+' my_file.fasta | sort | uniq | wc -l

# Literal 7
grep '>' my_file.fasta | cut -d ',' -f 1,3 | head -n 3
grep '>' my_file.fasta | cut -d ',' -f 1,3 | sort -t '=' -k 2 -n | head -n 5
grep '>' my_file.fasta | cut -d ',' -f 1,3 | sort -t '=' -k 2 -n -r | head -n 1