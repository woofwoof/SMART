# SMART
Social Model Alternative Response Trajectories

Designed for SWI Prolog ('SWIPL'), see https://www.swi-prolog.org/

Use e.g. ["SMART1.pl"] to execute the code (see SWIPL manual for more information).

Try these example queries at the SWPIL command prompt (worked under Termux on Android) followed by semicolon after each returned answer:

is_a(X,planet).

is_a(crisis,Y).

orbits(A,B).

are(humans,Y),are(Y,threatened),is_a(Z,crisis).

are(humans,Y),are(Y,X),by(X,A),is_a(Z,A).

Here is the semantic network:

![SMART1 Semantic Network 031122](https://user-images.githubusercontent.com/6171578/199735607-00a30321-4b6e-4c32-86d9-22d2a1687106.jpg)
