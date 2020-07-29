10 REM fast
20 LET i=0
30 LET a$="\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::"
40 LET b$="                                "
50 LET n=19
60 DIM a(n)
70 FOR f=1 TO n
80 LET a(f)=INT (RND*10)
90 NEXT f
100 LET ptr=n: LET flag=1
110 IF ptr=n AND flag=0 THEN GO TO 220
120 IF ptr=n THEN LET ptr=1: LET flag=0
130 IF a(ptr)>a(ptr+1) THEN LET atemp=a(ptr): LET a(ptr)=a(ptr+1): LET a(ptr+1)=atemp: LET flag=1
140 BEEP 0.004,20: LET ptr=ptr+1
150 LET i=i+1
160 GO SUB 180
170 GO TO 110
180 FOR f=1 TO n
190 PRINT AT f-1,0;a$(1 TO a(f));b$(1 TO (LEN b$)-a(f));
200 NEXT f
210 RETURN 
220 PRINT "Iterations: ";i
230 REM slow

