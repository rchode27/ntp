# cat sample2-candidate-date.csv 
unchanged,2018-04-06 16:35:40,TT,false,,devspz008.unix.sample.org
unchanged,2018-04-06 16:35:40,PX,false,,devspsr130.unix.sample.org
unchanged,2018-04-06 16:35:34,PX,false,,devscms104.unix.sample.org
unchanged,2018-04-06 16:35:33,TT,false,,devsspz015.unix.sample.org
unchanged,2018-04-06 16:35:33,PX,false,,devspdj130.unix.sample.org
unchanged,2018-04-06 16:35:31,TT,false,,devsspz009.unix.sample.org
unchanged,2018-04-06 16:35:30,PX,false,,qatecop401.unix.sample.org
unchanged,2018-04-06 16:35:30,PX,false,,tstitmx002.unix.sample.org
unchanged,2018-04-06 16:35:30,TT,false,,qatparpxx0005.unix.sample.org
unchanged,2018-04-06 16:35:25,TT,false,,qatspmp120.unix.sample.org
unchanged,2018-04-06 16:35:19,PX,false,,tstsisp222.unix.sample.org
unchanged,2018-04-06 16:35:19,PX,false,,devoidu120.unix.sample.org
unchanged,2018-04-06 16:35:17,TT,false,,pelspdm210.unix.sample.org
unchanged,2018-04-06 16:35:16,PX,false,,qatspcm110.unix.sample.org
unchanged,2018-04-06 16:35:16,TT,false,,reppaggsx001a.unix.sample.org
unchanged,2018-04-06 16:35:16,TT,false,,tstsfha101.unix.sample.org
unchanged,2018-04-06 16:35:15,TT,false,,qatparpxx0001.unix.sample.org
unchanged,2018-04-06 16:35:14,PX,false,,qatsplt120.unix.sample.org
unchanged,2018-04-06 16:35:14,PX,false,,reppaggsx001b.unix.sample.org

# awk -F',' '{print $6}' sample2-candidate-date.csv | sort -o sorted_sample2-candidate-data_hostnames

# cat sorted_sample2-candidate-data_hostnames
devoidu120.unix.sample.org
devscms104.unix.sample.org
devspdj130.unix.sample.org
devspsr130.unix.sample.org
devspz008.unix.sample.org
devsspz009.unix.sample.org
devsspz015.unix.sample.org
pelspdm210.unix.sample.org
qatecop401.unix.sample.org
qatparpxx0001.unix.sample.org
qatparpxx0005.unix.sample.org
qatspcm110.unix.sample.org
qatsplt120.unix.sample.org
qatspmp120.unix.sample.org
reppaggsx001a.unix.sample.org
reppaggsx001b.unix.sample.org
tstitmx002.unix.sample.org
tstsfha101.unix.sample.org
tstsisp222.unix.sample.org


# awk -F',' '{print $6}' sample2-candidate-date.csv | sort | cut -d "." -f1
devoidu120
devscms104
devspdj130
devspsr130
devspz008
devsspz009
devsspz015
pelspdm210
qatecop401
qatparpxx0001
qatparpxx0005
qatspcm110
qatsplt120
qatspmp120
reppaggsx001a
reppaggsx001b
tstitmx002
tstsfha101
tstsisp222


# grep TT sample2-candidate-date.csv | awk -F',' '{print $6}' > TT_hostnames_list
# cat TT_hostnames_list
devspz008.unix.sample.org
devsspz015.unix.sample.org
devsspz009.unix.sample.org
qatparpxx0005.unix.sample.org
qatspmp120.unix.sample.org
pelspdm210.unix.sample.org
reppaggsx001a.unix.sample.org
tstsfha101.unix.sample.org
qatparpxx0001.unix.sample.org

# grep PX sample2-candidate-date.csv | awk -F',' '{print $6}' > PX_hostnames_list
# cat PX_hostnames_list
devspsr130.unix.sample.org
devscms104.unix.sample.org
devspdj130.unix.sample.org
qatecop401.unix.sample.org
tstitmx002.unix.sample.org
tstsisp222.unix.sample.org
devoidu120.unix.sample.org
qatspcm110.unix.sample.org
qatsplt120.unix.sample.org
reppaggsx001b.unix.sample.org

