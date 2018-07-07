export CFLAGS="-Wall -g -m64 -pipe -O2  -fPIC ${CFLAGS}"
export CXXLAGS="${CFLAGS} ${CXXLAGS}"
export CPPFLAGS="-I${PREFIX}/include ${CPPFLAGS}"
export LDFLAGS="-L${PREFIX}/lib ${LDFLAGS}"

if [ `uname` == Linux ]; then
    export LDSHARED="$CC -shared -pthread" 
    python setup.py install
else
    ${PYTHON} setup.py install
fi
