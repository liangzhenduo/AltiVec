#include "ppc_altivec.h"

signed int Clamp(signed int x, signed int y, signed int z){
    if(x<y) return y;
    if(x>z) return z;
    return x;
}

template <typename T>
T Chop(T x, T y){
    return x & ((1<<y)-1);
}
//TODO: add more instruction here 

/*void vadduhm(ppc_avr_t &r, ppc_avr_t &a, ppc_avr_t &b){
    //TODO: body of instruction                                                           
}*/

void vaddsws (ppc_avr_t &r, ppc_avr_t &a, ppc_avr_t &b){
    for(int i=0;i<4;i++) {
        r.s32[i] = Clamp(a.s32[i] + b.s32[i], -(1<<31), (1<<31)-1);
        //printf("%d %d %d\n", r.s32[i], a.s32[i], b.s32[i]);
    }
}
void vsububm (ppc_avr_t &r, ppc_avr_t &a, ppc_avr_t &b){
    for(int i=0;i<16;i++) {
        r.u8[i] = (unsigned char)Chop(a.u8[i] + (~b.u8[i]) + 1, 8);
        //printf("%d %d %d\n", r.u8[i], a.u8[i], b.u8[i]);
    }
}
void vavgsh  (ppc_avr_t &r, ppc_avr_t &a, ppc_avr_t &b){
    for(int i=0;i<8;i++) {
        r.s16[i] = (signed short)Chop((a.s16[i] + b.s16[i] + 1)>>1, 16);
        //printf("%d %d %d\n", r.s16[i], a.s16[i], b.s16[i]);
    }
}
void vcmpequh(ppc_avr_t &r, ppc_avr_t &a, ppc_avr_t &b){
    for(int i=0;i<8;i++) {
        r.u16[i] = (unsigned short)(a.u16[i] == b.u16[i] ? 0xffff : 0x0);
        //printf("%d %d %d\n", r.u16[i], a.u16[i], b.u16[i]);
    }
}
void vslb    (ppc_avr_t &r, ppc_avr_t &a, ppc_avr_t &b){
    for(int i=0;i<16;i++) {
        int sh = b.s8[i]&0x7;
        r.s8[i] = a.s8[i] << sh;
        //printf("%d %d %d\n", r.s8[i], a.s8[i], b.s8[i]);
    }
}
