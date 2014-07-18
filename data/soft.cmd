psf2Edward -inp system.xmp -exit_on_error -dont_add_loginfo -edwver 1.2 -xml system.xml
libgen -hw system.xml -pe microblaze_0 -log libgen.log system.mss
cd hyApp\Release & make clean & make & cp hello_world_0.elf ..\..\s & cd ..\..