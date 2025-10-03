def collatz(N):
	#...
	if N == 1:
		return [N]
	if N % 2 == 0:
		return [N] + collatz(N/2)
	else:
		return [N] + collatz((N*3) + 1)

#...
