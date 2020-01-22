function [source_node,distance_to_point] = find_source_node(present_x,present_y)
    CoordinatesNodes=[2.2,-2.12; %1
                1000,1000;%2
                1000,1000;%3
                -.72,-1.81;%4
                -.69,-2.21;%5
                0.71,-3.38;%6
                1.88,-2.54;%7
                1.87,-2.02;%8
                1.87,-1.77;%9
                1.82,-1.3;%10
                -0.38,-1.4;%11
                -0.37,-1.88;%12
                -0.37,-2.13;%13
                -.37,-2.57;%14
                2.07,-1.92;%15
                -.52,-1.99;%16
                0.68,-3.04;%17
                0.75, 0.17];%18

            %present location
            x=present_x;
            y=present_y;
            outer_loop=[1,2,3,4,5,6];
            inner_loop=[7,8,9,10,11,12,13,14,17,18];
            flag=0;
            if(y-0.9858*x+0.4465<0)
                if(x<1.88 && x>-0.46)
                    if (y<0.45 && y>-3.2)
                        flag=0;
                    else
                        flag=1;
                    end
                else 
                    flag=1;
                end
             else 
                  flag=1;
            end
            if(flag==0)
            for i=1:length(inner_loop)
                a=(CoordinatesNodes(inner_loop(i),1)-x).^2;
                b=(CoordinatesNodes(inner_loop(i),2)-y).^2;
                sum=a+b;
                distance(i)=sqrt(a+b);
                %distance(i)=sqrt(sum((CoordinatesNodes(inner_loop(i),1)-present_location_x).^2,
                %(CoordinatesNodes(inner_loop(i),2)-present_location_y).^2))
            end     
            c=find(distance==min(distance));
            distance_to_point=min(distance);
            source_node=inner_loop(c);
            end
            if(flag==1)
            for i=1:length(outer_loop)
                a=(CoordinatesNodes(outer_loop(i),1)-x).^2;
                b=(CoordinatesNodes(outer_loop(i),2)-y).^2;
                sum=a+b;
                distance(i)=sqrt(a+b);
                %distance(i)=sqrt(sum((CoordinatesNodes(inner_loop(i),1)-present_location_x).^2,
                %(CoordinatesNodes(inner_loop(i),2)-present_location_y).^2))
            end     
            c=find(distance==min(distance));
            outer_loop(c);
            source_node=outer_loop(c);
            distance_to_point=min(distance)
            end
            