FluxPID.FluxKP = double(0);
FluxPID.FluxKI = double(0);
FluxPID.FluxKD = double(0);
FluxPID.FluxPID_Filter = double(0);
FluxPID.FluxPID_UpperLimit = double(0);
FluxPID.FluxPID_LowerLimit = double(0); 

% Inputs bus creation
FluxPID_bus_info = Simulink.Bus.createObject(FluxPID);
FluxPID = evalin('base',FluxPID_bus_info.busName);

