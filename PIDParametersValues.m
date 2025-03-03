% Define the SpeedPID structure
SpeedPID.SpeedKP = double(0);
SpeedPID.SpeedKI = double(0);
SpeedPID.SpeedKD = double(0);
SpeedPID.SpeedPID_Filter = double(0);
SpeedPID.SpeedPID_UpperLimit = double(0);
SpeedPID.SpeedPID_LowerLimit = double(0);

% Define the TorquePID structure
TorquePID.TorqueKP = double(0);
TorquePID.TorqueKI = double(0);
TorquePID.TorqueKD = double(0);
TorquePID.TorquePID_Filter = double(0);
TorquePID.TorquePID_UpperLimit = double(0);
TorquePID.TorquePID_LowerLimit = double(0);

% Define the FluxPID structure
FluxPID.FluxKP = double(0);
FluxPID.FluxKI = double(0);
FluxPID.FluxKD = double(0);
FluxPID.FluxPID_Filter = double(0);
FluxPID.FluxPID_UpperLimit = double(0);
FluxPID.FluxPID_LowerLimit = double(0);

% Create the main PIDParameters structure
PIDParameters.SpeedPID = SpeedPID;
PIDParameters.TorquePID = TorquePID;
PIDParameters.FluxPID = FluxPID;

% Create Simulink buses for SpeedPID, TorquePID, and FluxPID
SpeedPID_bus_info = Simulink.Bus.createObject(SpeedPID);
SpeedPID_bus = evalin('base', SpeedPID_bus_info.busName);

TorquePID_bus_info = Simulink.Bus.createObject(TorquePID);
TorquePID_bus = evalin('base', TorquePID_bus_info.busName);

FluxPID_bus_info = Simulink.Bus.createObject(FluxPID);
FluxPID_bus = evalin('base', FluxPID_bus_info.busName);

% Create a Simulink bus for the main PIDParameters structure
PIDParameters_bus_info = Simulink.Bus.createObject(PIDParameters);
PIDParameters_bus = evalin('base', PIDParameters_bus_info.busName);

% Clean up temporary variables in the base workspace
evalin('base', ['clear ', SpeedPID_bus_info.busName, ' ', ...
    TorquePID_bus_info.busName, ' ', FluxPID_bus_info.busName, ' ', ...
    PIDParameters_bus_info.busName]);

disp('PIDParameters structure and Simulink buses created successfully!');
