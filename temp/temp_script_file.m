t_const=1;
k=1;
stoptime=10;
maxsize=1e-3;
model=gcs;
res=sim(model);
plot(res.logsout.get("T").Values);