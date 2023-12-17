L=1;
g=9.8;
theta0=1;
stoptime=20;
maxsize=1e-3;
valueoflength=[1 3 4 6 9];
model= gcs;
for i= 1:numel(valueoflength)
    L=valueoflength(i);
    res=sim(model);
    plot(res.logsout.get("theta").Values);
    hold on
    legendlables{i}="length= "+num2str(L);
end
title("Simple Pendulum Motion Simulation");
xlabel("time");
ylabel("theta");
legend(legendlables);