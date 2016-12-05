function [Map,entryVector,exitVector]=iterativeBubble_Map()
% Eckpunkte des Objekts
v = [   0 6 0; 3 6 0; 3 9 0; 0 9 0; % start
    6 6 0; 6 9 0;
    3 3 0; 6 3 0;
    3 0 0; 6 0 0;
    9 6 0; 9 3 0;
    12 6 0; 12 3 0;
    15 6 0; 15 3 0; % exit point
    9 9 0; 12 9 0;
    9 12 0; 12 12 0;
    6 12 0;
    3 12 0;
    0 6 3; 3 6 3; 3 9 3; 0 9 3;
    6 6 3; 6 9 3;
    3 3 3; 6 3 3;
    3 0 3; 6 0 3;
    9 6 3; 9 3 3;
    12 6 3; 12 3 3;
    15 6 3; 15 3 3; % exit point
    9 9 3; 12 9 3;
    9 12 3; 12 12 3;
    6 12 3;
    3 12 3;
    ];




% Flaechen des Objekts
f = [   1 2 3; 1 3 4;
    2 5 6; 2 6 3;
    7 8 5; 7 5 2;
    9 10 8; 9 8 7;
    8 12 11; 8 11 5;
    12 14 13; 12 13 11;
    14 16 15; 14 15 13;
    11 13 18; 11 18 17;
    17 18 20; 17 20 19;
    6 17 19; 6 19 21;
    3 6 21; 3 21 22;  % path in 2 D
    23 24 25; 23 25 26;
    24 27 28; 24 28 25;
    29 30 27; 29 27 24;
    31 32 30; 31 30 29;
    30 34 33; 30 33 27;
    34 36 35; 34 35 33;
    36 38 37; 36 37 35;
    33 35 40; 33 40 39;
    39 40 42; 39 42 41;
    28 39 41; 28 41 43;
    25 28 43; 25 43 44;
    6 5 27; 6 27 28;
    5 11 33; 5 33 27;
    11 17 39; 11 39 33;
    17 6 28; 17 28 39;
    4 1 23; 4 23 26;
    1 2 24; 1 24 23;
    2 7 29; 2 29 24;
    7 9 31; 7 31 29;
    9 10 32; 9 32 31;
    10 8 30; 10 30 32;
    8 12 34; 8 34 30;
    12 14 36; 12 36 34;
    14 16 38; 14 38 36;
    16 15 37; 16 37 38;
    15 13 35; 15 35 37;
    13 18 40; 13 40 35;
    18 20 42; 18 42 40;
    20 19 41; 20 41 42;
    19 21 43; 19 43 41;
    21 22 44; 21 44 43;
    22 3 25; 22 25 44;
    3 4 26; 3 26 25;
    ];

entryVector=[ 0 6 0; 3 6 0; 3 9 0; 0 9 0;];

exitVector= [15 6 0; 15 3 0; 15 6 3; 15 3 3; ];

Map.v = v;
Map.f = f;