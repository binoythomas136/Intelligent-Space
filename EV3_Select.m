%% Setup EV3 for Communication
clc;
try %Setup IP Address
    if ipend == '0'
    end
catch
    ipend = string(input('IP Address == 192.168.0.'));
end
try %Initiate Security Key
    if key == 256
    end
catch
    key(1,1) = randi((2^6)-1);
    key(1,2) = key(1,1);
    key(2,1) = randi((2^6)-1) + key(1,1);
    key(2,2) = key(2,1);
end
ip_address = char(strcat('192.168.0.',ipend));
disp('EV1 == MARIO');
disp('EV2 == YOSHI');
disp('EV3 == LUIGI');
disp('EV4 == TOAD');
disp('EV5 == WARIO (4 SENSORS IN A LINE)');
disp('EV6 == BOWSER (CAR)');
EV = input('Which EV3 Are You Using? EV: ');
switch(EV)
    case 1
        PORT1 = 25001;
        PORT2 = 25011;
        PORTM = [25001 25001; 25001 25001];
    case 2
        PORT1 = 25002;
        PORT2 = 25012;
        PORTM = [25002 25002; 25002 25002];
    case 3
        PORT1 = 25003;
        PORT2 = 25013;
        PORTM = [25003 25003; 25003 25003];
    case 4
        PORT1 = 25004;
        PORT2 = 25014;
        PORTM = [25004 25004; 25004 25004];
    case 6 % CAR
        PORT1 = 25005;
        PORT2 = 25015;
        PORTM = [25005 25005; 25005 25005];
    case 5 % 3 SENSORS IN A LINE
        PORT1 = 25006;
        PORT2 = 25016;
        PORTM = [25006 25006; 25006 25006];
    otherwise
        disp('ERROR: NON-VALID EV NUMBER');
end