SpeedPID.SpeedKP = double(0);
SpeedPID.SpeedKI = double(0);
SpeedPID.SpeedKD = double(0);
SpeedPID.SpeedPID_Filter = double(0);
SpeedPID.SpeedPID_UpperLimit = double(0);
SpeedPID.SpeedPID_LowerLimit = double(0); 

% Inputs bus creation
SpeedPID_bus_info = Simulink.Bus.createObject(SpeedPID);
SpeedPID = evalin('base',SpeedPID_bus_info.busName);

