neighbourList = load('neighbourlist');
neighbourList = neighbourList.sphereNeighbourList; % assuming it is matrix of index of neighbour sphere
sphereList =   load ('spherelist');
sphereList = sphereList.sphereList;

% step 1 : Mark exit - start and goal set
% step 2: parse coordinates 
% step 3: write pseudo code.
   % A] Open and closed list  - done
   % B] Create matrix m X n equal to dimension of sphere list to store f,g and
   % h score
   % for each node, do
    % i)    cost of a node, f score = g + h 
    % ii)   g score  is the cost it took to get to the node, initial value
    % 0 
    % iii)  g(n)=g(n.parent)+cost(n.parent,n)
    % iv)   h score is our guess as to how much it'll cost to reach the goal from that node
    % v)    Manhattan distance, h(n)=|n.x-goal.x|+|n.y-goal.y|

[Map,entryVector,exitVector]=iterativeBubble_Map();
closedList= [];
% keep all spheres in open list (known issue: list is not in sync with neighbour list(TBD))
openList= sphereList;
gScore = [];
fScore = [];
hScore= [];

isScoreCalc = scoreNeighbour(sphereList,neighbourList);




