cd base_af
doxygen doxygen_script
ln -s -f doc/html/index.html doc/af_lib.html

cd ../projects/battle_for_rokugan
doxygen doxygen_script
ln -s -f doc/html/index.html doc/bfr.html

cd ../latinka_translitterator
doxygen doxygen_script
ln -s -f doc/html/index.html doc/latinka.html

cd ../../..
if [ ! -d "doc" ]
then 
    mkdir doc
fi
cd doc

ln -s -f ../source/base_af/doc/html/index.html af_lib.html
ln -s -f ../source/projects/battle_for_rokugan/doc/html/index.html bfr.html
ln -s -f ../source/projects/latinka_translitterator/doc/html/index.html latinka.html
