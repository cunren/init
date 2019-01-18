TARGET = a.out
OBJECTS = globals.o main.o
F90 = gfortran -O3
COMMON_MOD = globals.f90 

.SUFFIXES :
.SUFFIXES : .o .f90
.f90.o:
	${F90} -c $<

.mod: %.f90 %.o
	@:

${TARGET} : ${OBJECTS}
	${F90} ${OBJECTS} -o $@

clean :
	rm -f ./a.* ./b.* ./fort.* ./*.o ./*~ ./*.mod ./af.gp ./*.p

${OBJECTS}: ${COMMON_MOD}
