function [ convertedTemp ] = ConvertTempTo( temp, to )
if to == 'C'
    convertedTemp = 5/9 * (temp - 32);
elseif to == 'F'
    convertedTemp = 9/5 * temp + 32;
end