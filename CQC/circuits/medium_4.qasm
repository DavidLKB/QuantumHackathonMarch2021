OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];
rz(0.5*pi) q[0];
rx(0.5*pi) q[1];
rx(0.5*pi) q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[0];
rx(0.5*pi) q[1];
cz q[2],q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[0];
rx(0.5*pi) q[0];
rz(0.5*pi) q[0];
cz q[0],q[1];
rz(0.5*pi) q[1];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
rz(0.050058405087807456*pi) q[1];
rz(0.5*pi) q[1];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
cz q[0],q[1];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
cz q[2],q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rx(0.5*pi) q[2];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
rx(0.5*pi) q[0];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
cz q[0],q[2];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
rz(1.651163175669144*pi) q[2];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
cz q[0],q[2];
rx(0.5*pi) q[0];
rz(0.5*pi) q[2];
rz(0.5*pi) q[0];
rx(0.5*pi) q[2];
rx(0.5*pi) q[0];
rz(0.5*pi) q[2];
rz(0.5*pi) q[0];
rz(0.5*pi) q[2];
rz(0.5*pi) q[0];
rx(0.5*pi) q[2];
rx(0.5*pi) q[0];
rz(0.5*pi) q[2];
rz(0.5*pi) q[0];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
cz q[2],q[1];
rz(0.5*pi) q[1];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
cz q[1],q[0];
rz(0.5*pi) q[0];
rx(0.5*pi) q[0];
rz(0.5*pi) q[0];
rz(1.785756949177611*pi) q[0];
rz(0.5*pi) q[0];
rx(0.5*pi) q[0];
rz(0.5*pi) q[0];
cz q[1],q[0];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[0];
cz q[2],q[1];
rx(0.5*pi) q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
rz(0.5*pi) q[0];
rx(0.5*pi) q[1];
rx(0.5*pi) q[2];
rx(0.5*pi) q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rx(0.5*pi) q[2];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
cz q[2],q[0];
rz(0.5*pi) q[0];
rx(0.5*pi) q[0];
rz(0.5*pi) q[0];
rz(1.0656964456599543*pi) q[0];
rz(0.5*pi) q[0];
rx(0.5*pi) q[0];
rz(0.5*pi) q[0];
cz q[2],q[0];
rz(0.5*pi) q[0];
rz(0.5*pi) q[2];
rx(0.5*pi) q[0];
rx(0.5*pi) q[2];
rz(0.5*pi) q[0];
rz(0.5*pi) q[2];
rx(0.5*pi) q[0];
cz q[2],q[1];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rz(1.769346592802992*pi) q[1];
rz(0.5*pi) q[1];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
cz q[2],q[1];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
rx(0.5*pi) q[1];
rx(0.5*pi) q[2];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
rx(0.5*pi) q[1];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
cz q[1],q[2];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
rz(0.9085031208613732*pi) q[2];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
cz q[1],q[2];
rx(0.5*pi) q[1];
rz(0.5*pi) q[2];
rz(0.5*pi) q[1];
rx(0.5*pi) q[2];
rx(0.5*pi) q[1];
rz(0.5*pi) q[2];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
cz q[2],q[1];
rz(0.5*pi) q[1];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
rz(0.7712786519176913*pi) q[1];
rz(0.5*pi) q[1];
rx(0.5*pi) q[1];
rz(0.5*pi) q[1];
cz q[2],q[1];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
rx(0.5*pi) q[1];
rx(0.5*pi) q[2];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
rz(0.5*pi) q[1];
rx(0.5*pi) q[2];
rx(0.5*pi) q[1];
rz(0.5*pi) q[2];
rz(0.5*pi) q[1];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
cz q[1],q[2];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
rz(0.18415931649916573*pi) q[2];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
cz q[1],q[2];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
rx(0.5*pi) q[1];
rx(0.5*pi) q[2];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
cz q[1],q[0];
rx(0.5*pi) q[2];
rz(0.5*pi) q[0];
rz(0.5*pi) q[2];
rx(0.5*pi) q[0];
rx(0.5*pi) q[2];
rz(0.5*pi) q[0];
rz(0.5*pi) q[2];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
cz q[0],q[2];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
rz(1.770321000041829*pi) q[2];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
cz q[0],q[2];
rz(0.5*pi) q[0];
rz(0.5*pi) q[2];
rx(0.5*pi) q[0];
rx(0.5*pi) q[2];
rz(0.5*pi) q[0];
rz(0.5*pi) q[2];
cz q[1],q[0];
rz(0.5*pi) q[2];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rx(0.5*pi) q[2];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rz(0.5*pi) q[2];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
cz q[1],q[2];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
rz(0.20672149916454585*pi) q[2];
rz(0.5*pi) q[2];
rx(0.5*pi) q[2];
rz(0.5*pi) q[2];
cz q[1],q[2];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
rx(0.5*pi) q[1];
rx(0.5*pi) q[2];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
