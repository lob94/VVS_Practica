
#define N 5	//Número de filósofos

inline pick_fork(s){
}

inline leave_fork(s){
}

active[N] proctype barbero(){
	do						//ha de meterse en varios procesos, tantos como N
		::  printf("%d is thinking\n", _pid);

		pick_fork("LEFT");	//hay que hacer un mutex pick_fork(i) para bloquear el recurso que se encuentre en i
		pick_fork("RIGHT");

		cs: printf("%d is eating\n", _pid);

		leave_fork("LEFT");	//hay que hacer un mutex pick_fork(i) para liberar el recurso en la posición i
		leave_fork("RIGHT")
	od
	}

init{
	int i = 0;
	bool ontable[N];
	do						//bucle inicializador del array
		::i < N -> ontable[i] = 1; i++	
		::i >= N -> break;
	od 

	//creación de los distintos procesos (un proceso por filósofo), cada proceso contendrá el bucle del do 

	
}
