
#define N 5	//Número de filósofos

mtype = {thinking, eating, hungry};
mtype status[N] = thinking;
bool S[N] = 0;
bool mutex = 1;

inline test(pid){
	int left = _pid;
	int right = _pid + 1;

	if
		:: right >= N -> right = 0
		:: else -> skip
	fi
	

	if
		::status[left] != eating && status[right] != eating -> s[pid] = 1; 
		  status[pid] = eating;
		  s[pid] = 0:
		::else -> skip
	fi
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
		    wait(mutex);
		    status[_pid] = hungry;
		    test(_pid);
		    signal(mutex);
		    wait(S[_pid]);
		cs: printf("%d is eating\n", _pid);
		    wait(mutex);
		    status[_pid] = thinking;
		    test(left);
		    test(right);
		    signal(mutex)
	od
}
