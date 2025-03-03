% Define the structure first
SpeedPID = struct();
SpeedPID.SpeedKP = double(0);
SpeedPID.SpeedKI = double(0);
SpeedPID.SpeedKD = double(0);
SpeedPID.SpeedPID_Filter = double(0);
SpeedPID.SpeedPID_UpperLimit = double(0);
SpeedPID.SpeedPID_LowerLimit = double(0);

% Create a Simulink Bus from the structure
SpeedPID_bus_info = Simulink.Bus.createObject(SpeedPID);

% Define the bus in the workspace
SpeedPID = evalin('base', SpeedPID_bus_info.busName);