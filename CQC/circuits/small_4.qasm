OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
rx(0.5*pi) q[0];
rx(0.5*pi) q[1];
rx(0.5*pi) q[2];
rz(0.5*pi) q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
cz q[0],q[2];
rz(0.8057509208634575*pi) q[0];
cz q[1],q[2];
rz(0.5*pi) q[0];
rz(1.2756539493927535*pi) q[1];
rz(1.3812448944817572*pi) q[2];
rx(0.5*pi) q[0];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
rz(0.5*pi) q[0];
rx(0.5*pi) q[1];
rx(0.5*pi) q[2];
rz(0.5*pi) q[1];
rz(0.5*pi) q[2];
