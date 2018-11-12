
#define N 5	//Número de filósofos

byte turn = 0;

active[N] proctype filosofo(){

	do						
		::  printf("%d is thinking\n", _pid);
		    turn == _pid
		cs: printf("%d is eating\n", _pid);
		    if 
			::turn < N-1 -> turn++
			::else -> turn = 0
		    fi
	od
}
