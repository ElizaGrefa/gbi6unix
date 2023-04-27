#bin/bash/
head -n 2 Pacifici2013_data.csv | cut -d ";"-f 2
head -n 2 Pacifici2013_data.csv | cut -d ";"-f 3-6 | tr";"""> aniamles.csv
