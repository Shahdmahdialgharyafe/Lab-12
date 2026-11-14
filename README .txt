==================================================
  >>> THIS README IS FOR: LAB 12 - Graphs <<<
==================================================

ARTI - Lab 12: Graphs
Student: Shahd Algharyafe
Tool: SWI-Prolog

Files
-----
travel.pl -> Task 1: Path between cities (directed graph)

Task 1
------
Each arrow in the city graph is written as a fact edge(From, To).
travel(From, To, Path) finds every path from one city to another.
path/4 keeps a list of visited cities so it never goes in a loop,
and reverse/2 puts the final path in the right order.

Run (press ; after each answer to see the next path):
  ?- travel('Dammam','Madinah',P).
  P = ['Dammam','Qatif','Madinah'] ;
  false.

  ?- travel('Riyadh','Makkah',P).
  P = ['Riyadh','Dammam','Qatif','Madinah','Makkah'] ;
  false.

  ?- travel('Makkah','Riyadh',P).
  P = ['Makkah','Madinah','Taif','Dammam','Riyadh'] ;
  P = ['Makkah','Madinah','Tabuk','Taif','Dammam','Riyadh'] ;
  P = ['Makkah','Riyadh'] ;
  false.

  ?- travel('Makkah','Madinah',P).
  P = ['Makkah','Madinah'] ;
  P = ['Makkah','Riyadh','Dammam','Qatif','Madinah'] ;
  false.

Note: write city names inside single quotes, e.g. 'Makkah'.
