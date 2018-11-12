
#define N 5	//Número de filósofos

bool ontable[N] = 1;

inline pick_fork(s){
	atomic{
		ontable[s];
		ontable[s] = 0
	}
}

inline leave_fork(s){
	ontable[s] = 1
}

active[N] proctype filosofo(){

	int left = _pid;
	int right = _pid + 1;

	if
		:: right >= N -> right = 0
		:: else -> skip
	fi

	do						
		::  printf("%d is thinking\n", _pid);
		    pick_fork(left);	
		    pick_fork(right);
		cs: printf("%d is eating\n", _pid);
		    leave_fork(left);	
		    leave_fork(right)
	od
}
