src_dir=$(pwd)

function mkdir_ {
    if [ ! -d $1 ] 
        then mkdir $1
    fi
}

function mkdir_and_open {
    mkdir_ $1
    cd $1
}

cd ..
mkdir_and_open "doc"
doc_dir=$(pwd)

# 1 - path to folder
# 2 - name of html file
function make_doc {
    cd "${src_dir}/$1"
    git pull
    doxygen doxygen_script
    
    cd "doc"
    ln -s -f html/index.html "$2.html"
    ln -s -f html/index.html "${doc_dir}/$2.html"
    git add *
    git commit -m "update doc $now"
    
    cd ${src_dir}
    git add $1
    
    cd ${doc_dir}
    ln -s -f "${src_dir}/$1/doc/html/index.html" "$2.html"
    git add "$2.html"
}

make_doc "base_af" "af_lib"
make_doc "projects/battle_for_rokugan" "bfr"
make_doc "projects/latinka_translitterator" "latinka"

cd ${src_dir}
git pull
git commit -m "update doc $now"
git push --recurse-submodules=on-demand

