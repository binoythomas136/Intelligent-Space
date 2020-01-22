function [position, orientation] = Depacket(datarec)
    output=double(datarec);


    umv=output(25)*12+29;
    i=0;
    while output(umv) == 0
        umv=output(25)*12+34+i;
        i=i+1;
    end
    rbc=output(umv)*12+4+umv;
    rbc_ev = zeros(1,output(rbc));

    rbc_ev(1)=rbc + 4;
    ev_position = 0; single(ev_position);
    ev_orientation = 0; single(ev_orientation);
    ev_pos = zeros(output(rbc),12);
    ev_ori = zeros(output(rbc), 16);
    ev_marker = zeros(1,output(rbc));
    ev_position = zeros(output(rbc),3);
    ev_orientation = zeros(output(rbc),4);

    for j=1:output(rbc)
        for i=1:12
            ev_pos(j,i)=output(rbc_ev(j)+3+i);
        end
        for i=1:16
            ev_ori(j,i)=output(rbc_ev(j)+15+i);
        end
        ev_marker(j) = rbc_ev(j)+32;
        rbc_ev(j+1) = output(ev_marker(j))*16+20+ev_marker(j);
    end

    for i=1:output(rbc)
        for j=1:3
            for w = 1:4
                temp(w)=(ev_pos(i,(j-1)*4+w));


            end   
             abc=uint8(temp);
            Y=typecast(abc,'single');
            ev_position(i,j)=Y;
        end
        for j=1:4
            for w = 1:4
                temp(w)=(ev_ori(i,(j-1)*4+w));


            end
            abc=uint8(temp);
            Y=typecast(abc,'single');
            ev_orientation(i,j)=Y;
        end    
    end
    position = ev_position;
    orientation = ev_orientation;
end

