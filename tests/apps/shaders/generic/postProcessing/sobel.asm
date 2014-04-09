//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20499
//
//
///
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// g_txColourBuffer                  texture  float4          2d    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_4_0
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 5
mov r0.zw, l(0,0,0,0)
resinfo_uint r1.xyzw, l(0), t0.xyzw
utof r1.xyzw, r1.xyxy
mul r1.xyzw, r1.xyzw, v1.xyxy
ftoi r1.xyzw, r1.xyzw
iadd r2.xyzw, r1.zwzw, l(-1, -1, 0, -1)
mov r0.xy, r2.zwzz
ld r0.xyzw, r0.xyzw, t0.xyzw
dp3 r0.x, r0.xyzx, l(0.212500, 0.715400, 0.072100, 0.000000)
mov r2.zw, l(0,0,0,0)
ld r2.xyzw, r2.xyzw, t0.xyzw
dp3 r0.y, r2.xyzx, l(0.212500, 0.715400, 0.072100, 0.000000)
mad r0.x, r0.x, l(2.000000), r0.y
iadd r2.xyzw, r1.zwzw, l(-1, 0, 1, -1)
mov r3.xy, r2.zwzz
mov r3.zw, l(0,0,0,0)
ld r3.xyzw, r3.xyzw, t0.xyzw
dp3 r0.z, r3.xyzx, l(0.212500, 0.715400, 0.072100, 0.000000)
add r0.x, r0.z, r0.x
iadd r3.xyzw, r1.zwzw, l(1, 0, -1, 1)
iadd r1.xyzw, r1.zwxy, l(1, 1, 0, 1)
mov r4.xy, r3.zwzz
mov r4.zw, l(0,0,0,0)
ld r4.xyzw, r4.xyzw, t0.xyzw
dp3 r0.w, r4.xyzx, l(0.212500, 0.715400, 0.072100, 0.000000)
add r0.x, -r0.w, r0.x
mov r4.xy, r1.zwzz
mov r4.zw, l(0,0,0,0)
ld r4.xyzw, r4.xyzw, t0.xyzw
dp3 r4.x, r4.xyzx, l(0.212500, 0.715400, 0.072100, 0.000000)
mad r0.x, -r4.x, l(2.000000), r0.x
mov r1.zw, l(0,0,0,0)
ld r1.xyzw, r1.xyzw, t0.xyzw
dp3 r1.x, r1.xyzx, l(0.212500, 0.715400, 0.072100, 0.000000)
add r0.x, r0.x, -r1.x
mul r0.x, r0.x, r0.x
mov r2.zw, l(0,0,0,0)
ld r2.xyzw, r2.xyzw, t0.xyzw
dp3 r1.y, r2.xyzx, l(0.212500, 0.715400, 0.072100, 0.000000)
mad r0.y, r1.y, l(2.000000), r0.y
add r0.y, r0.w, r0.y
add r0.y, -r0.z, r0.y
mov r3.zw, l(0,0,0,0)
ld r2.xyzw, r3.xyzw, t0.xyzw
dp3 r0.z, r2.xyzx, l(0.212500, 0.715400, 0.072100, 0.000000)
mad r0.y, -r0.z, l(2.000000), r0.y
add r0.y, -r1.x, r0.y
mad r0.x, r0.y, r0.y, r0.x
sqrt o0.xyz, r0.xxxx
mov o0.w, l(1.000000)
ret 
// Approximately 51 instruction slots used
