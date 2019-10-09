% Author: Syed Haseeb Shah (QuantumNovice)
%Simple Tic Tac Toe

% Creates a row vector
space = 1:9;

% Converts it into matrix
space = reshape(space,[3,3]);
space = string(space);

marker = 'O';
reset = 0;
changes = 0;

for r = 1:3
    disp( space(r,1) + "   |   " + space(r,2) + "   |   " +space(r,3) )
    disp('    |       |')
    disp( '___________________')
end
    
while reset ~= 1

    pos = input( char("Player ("+marker+")<< "));
    
    if and(space(pos) ~= 'O', space(pos) ~= 'X')
        space(pos) = marker;
        changes = 1;
    end
    clc
    % Win Check
    for i = 1:3
        % If rows are similaroz
        if or(sum(space(i, :) == ["X","X","X"]) == 3, sum(space(i, :) == ["O","O","O"]) == 3)
            disp("Player "+marker+" Wins")
            reset = 1;
            break
        end
        % If cols are similar
        if or(sum(space(:, i) == ["X";"X";"X"]) == 3, sum(space(:, i) == ["O";"O";"O"]) == 3)
            disp("Player "+marker+" Wins")
            reset = 1;
            break
        end
        % main diagonal
        if and(space(1,1) == space(2,2), space(2,2) == space(3,3))
            disp("Player "+marker+" Wins")
            reset = 1;
            break
        end
        
        % cross diagonal
        if and(space(1,3) == space(2,2), space(2,2) == space(3,1))
            disp("Player "+marker+" Wins")
            reset = 1;
            break
        end
        
    end 
    
    % Game  Draw

    count = 0;
    for elm = 1:9
        if or(space(elm) == "X", space(elm) == "O")
            count = count + 1;
        end
        if count == 9
            disp ("Game Draw")
            reset = 1;
            break
        end
        
    end
    
    for r = 1:3
        disp( space(r,1) + "   |   " + space(r,2) + "   |   " +space(r,3) )
        disp('    |       |')
        disp( '___________________')
    end
        
    % Make sure  previous positions are loocked
    if changes == 1
        switch marker
            case "X"
                marker = "O";
            case "O"
                marker = "X";
        changes = 0;
        end
    end
end

