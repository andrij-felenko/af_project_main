cd base_af
git pull
doxygen doxygen_script
cd doc
ln -s -f html/index.html af_lib.html
cd ..
git add doc/*
git add af_lib.html
git commit -m "update doc"
git push

cd ../projects/battle_for_rokugan
git pull
doxygen doxygen_script
cd doc
ln -s -f html/index.html bfr.html
cd ..
git add doc/*
git add bfr.html
git commit -m "update doc"
git push

cd ../latinka_translitterator
git pull
doxygen doxygen_script
cd doc
ln -s -f html/index.html latinka.html
cd ..
git add doc/*
git add latinka.html
git commit -m "update doc"
git push

cd ../..
git pull
git add base_af
git add projects/battle_for_rokugan
git add projects/latinka_translitterator
git commit -m "update doc"
git push

cd ..
if [ ! -d "doc" ]
then 
    mkdir doc
fi
cd doc

ln -s -f ../source/base_af/doc/html/index.html af_lib.html
ln -s -f ../source/projects/battle_for_rokugan/doc/html/index.html bfr.html
ln -s -f ../source/projects/latinka_translitterator/doc/html/index.html latinka.html
