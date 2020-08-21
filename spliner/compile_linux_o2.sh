gcc -fPIC -g -c -Wall -O3 cubic_spline.c
gcc -fPIC -g -c -Wall -O3 multi_fit_core.c
gcc -fPIC -g -c -Wall -O3 cubic_fit.c
gcc -shared -Wl,-soname,cubic_spline.so.1 -o cubic_spline.so.1.0.1 cubic_spline.o -lc -L /n/app/lapacke/3.6.1/lib/ -llapacke
gcc -shared -Wl,-soname,cubic_fit.so.1 -o cubic_fit.so.1.0.1 cubic_fit.o multi_fit_core.o cubic_spline.o -lc -L /n/app/lapacke/3.6.1/lib/ -llapacke
ln -s cubic_spline.so.1.0.1 cubic_spline.so
ln -s cubic_fit.so.1.0.1 cubic_fit.so
