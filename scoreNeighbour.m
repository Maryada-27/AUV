function [ isScored ] = scoreNeighbour( sphereList,neighbourList )
%SCORENEIGHBOUR Summary of this function goes here
%   Detailed explanation goes here
% Test
neighListsize= size(neighbourList);
disp(neighListsize);
isScored= 0;

for ncounter= 1: size(neighbourList)
    % for each sphere ,
    % get all neighbour, for each neighbour
    % calculate G and H score
    currentNeighbours=  neighbourList(ncounter,:);
    % Test
    numList=size(currentNeighbours);
    for scounter = 1:numList(2)
        nextindex=currentNeighbours(scounter);
        if nextindex ~=0
            nextSphere =sphereList(nextindex,:);            
            fScore(ncounter,scounter)= computeFScore(nextSphere,sphereList(ncounter));
            % Test
       
        end
    end      
end

disp(fScore);
end

