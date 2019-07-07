SELECT staffno, fname, POSITION, salary, branchno
FROM staff
WHERE salary > SOME (SELECT salary
		     FROM staff
		     WHERE branchno = 'B003');
