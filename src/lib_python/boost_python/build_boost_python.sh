PY_V="$1"
PY_EXE="$2"
PY_INCLUDE="$3"
PY_LIBS=$(dirname "$4")

cd ./src/lib_python/boost_python

./bootstrap.sh --with-libraries=python

PY_CFG="using python : ${PY_V} : ${PY_EXE} : ${PY_INCLUDE} : ${PY_LIBS} ;"
sed -i "/using python/c\    ${PY_CFG}" project-config.jam

#./b2 clean
./b2 
