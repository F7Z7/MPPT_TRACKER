model="buckBoost_MPPT";
load_system(model)
% Create simulation input
simIn = Simulink.SimulationInput(model);

% Run the simulation
simOut.who


figure;

% Duty ratio
subplot(2,2,1)
plot(simOut.Duty, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Duty Ratio');
title('Duty from MPPT Buck-Boost');
grid on;

% PV Current
subplot(2,2,2)
plot(simOut.current, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Current (A)');
title('PV Current');
grid on;

% PV Voltage
subplot(2,2,3)
plot(simOut.voltage, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Voltage (V)');
title('PV Voltage');
grid on;

% PV Power
subplot(2,2,4)
plot(simOut.power, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Power (W)');
title('PV Power');
grid on;
