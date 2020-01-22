function theta = next_angle(present,next)
    %present = input('Enter a number: ');
    %next = input('Enter next value: ');
    switch present
        case 1
            switch next
                case 2
                    theta=0;
                case 15
                    theta=315;
                case 6
                    theta =180;
            end
        case 2
            switch next
                case 1
                    theta=180;
                case 3
                    theta=0;
                case 15
                    theta =225;
            end
        case 3
            switch next
                case 2
                    theta=90;
                case 4
                    theta=270;
            end
        case 4
            switch next
                case 3
                    theta=0;
                case 5
                    theta=180;
                case 16
                    theta =135;
            end
        case 5
            switch next
                case 4
                    theta=0;
                case 6
                    theta=180;
                case 16
                    theta =45;
            end
        case 6
            switch next
                case 5
                    theta=270;
                case 1
                    theta=90;

            end
        case 7
            switch next
                case 8
                    theta=0;
                case 14
                    theta=315;
                case 17
                    theta =180;
            end
        case 8
            switch next
                case 9
                    theta=0;
                case 13
                    theta=270;
                case 7
                    theta =180;
                case 15
                    theta =45;    
            end
        case 9
            switch next
                case 10
                    theta=0;
                case 12
                    theta=270;
                case 8
                    theta =180;
                case 15
                    theta =135;
            end
        case 10
            switch next
                case 18
                    theta=0;
                case 11
                    theta=225;
                case 9
                    theta =180;

            end
        case 11
            switch next
                case 10
                    theta=135;
                case 12
                    theta=180;
                case 18
                    theta =0;

            end
        case 12
            switch next
                case 11
                    theta=0;
                case 16
                    theta=225;
                case 13
                    theta =180;
                case 9
                    theta =90;
            end
        case 13
            switch next
                case 12
                    theta=0;
                case 16
                    theta=315;
                case 14
                    theta =180;
                case 8
                    theta =90;
            end
        case 14
            switch next
                case 13
                    theta=0;
                case 17
                    theta=180;
                case 7
                    theta =90;

            end
        case 15
            switch next
                case 9
                    theta=315;
                case 8
                    theta=225;
                case 1
                    theta =135;
                case 2
                    theta =45;
            end
        case 16
            switch next
                case 4
                    theta=315;
                case 5
                    theta=225;
                case 13
                    theta =135;
                case 12
                    theta =45;
            end
        case 17
            switch next
                case 7
                    theta=90;
                case 14
                    theta=270;

            end
        case 18
            switch next
                case 10
                    theta=45;
                case 11
                    theta=225;

            end
        otherwise
            disp('other value')
    end
    %disp(theta)
end