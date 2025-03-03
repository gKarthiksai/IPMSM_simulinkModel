TorquePID.TorqueKP = double(0);
TorquePID.TorqueKI = double(0);
TorquePID.TorqueKD = double(0);
TorquePID.TorquePID_Filter = double(0);
TorquePID.TorquePID_UpperLimit = double(0);
TorquePID.TorquePID_LowerLimit = double(0); 

% Inputs bus creation
TorquePID_bus_info = Simulink.Bus.createObject(TorquePID);
TorquePID = evalin('base',TorquePID_bus_info.busName);
