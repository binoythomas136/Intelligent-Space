function [nodes_1,angles] = shortest_path (present,target)
    G=[ 0 1 0 0 0 6 0 0 0 0 0 0 0 0 1 0 0 0;%1
      1 0 12 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0;%2
      0 12 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0;%3
      0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0;%4
      0 0 0 0 0 6 0 0 0 0 0 0 0 0 0 1 0 0;%5
      6 0 0 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0;%6
      0 0 0 0 0 0 0 2 0 0 0 0 0 6 0 0 4 0;%7
      0 0 0 0 0 0 2 0 1 0 0 0 6 0 1 0 0 0;%8
      0 0 0 0 0 0 0 1 0 2 0 6 0 0 1 0 0 0;%9
      0 0 0 0 0 0 0 0 2 0 6 0 0 0 0 0 0 6;%10
      0 0 0 0 0 0 0 0 0 6 0 2 0 0 0 0 0 12;%11
      0 0 0 0 0 0 0 0 6 0 2 0 0 0 0 1 0 0;%12
      0 0 0 0 0 0 0 6 0 0 0 0 0 2 0 1 0 0;%13
      0 0 0 0 0 0 6 0 0 0 0 0 2 0 0 0 4 0;%14
      1 1 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0;%15
      0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0;%16
      0 0 0 0 0 0 4 0 0 0 0 0 0 4 0 0 0 0;%17
      0 0 0 0 0 0 0 0 0 6 12 0 0 0 0 0 0 0;];%18

    present_node=present;
    target_node=target;
    [e L] = dijkstra(G,target_node,present_node);

    angles(1) = 500;
    for i =1:(length(L)-1)
        if L(i) ~= 2 && L(i) ~=3
            nodes_1(i)=L(i);
            th= next_angle(L(i),L(i+1));
            angles(i)=th;
            
        end

    end

    nodes_1(length(L))=L(length(L));
    disp('sp funct')
    disp(nodes_1)
    disp(angles)
end



