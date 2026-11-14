% ===== Lab 10 - Task 1: Travel between cities (Directed Graph) =====

% Facts: edge(From, To) means there is a one-way road From -> To
edge('Makkah',  'Madinah').
edge('Makkah',  'Riyadh').
edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Taif',    'Dammam').
edge('Taif',    'Tabuk').
edge('Tabuk',   'Taif').
edge('Dammam',  'Qatif').
edge('Dammam',  'Riyadh').
edge('Riyadh',  'Dammam').
edge('Qatif',   'Madinah').
edge('Qatif',   'Dammam').

% Rules
% travel(Start, Finish, Path)
travel(From, To, Path) :-
    path(From, To, [From], P),
    reverse(P, Path).

% path(From, To, Visited_List, Path_List)
path(X, X, P, P).                  % base case: reached the goal city
path(X, Y, V, P) :-
    edge(X, Z),                    % go to a next city Z
    not(member(Z, V)),             % Z was not visited before (no loops)
    path(Z, Y, [Z|V], P).          % continue from Z
