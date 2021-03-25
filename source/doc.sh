cd base_af
doxygen doxygen_script

cd ../..
mkdir doc
cd doc
ln -s ../source/base_af/doc/html/index.html af_lib.html
