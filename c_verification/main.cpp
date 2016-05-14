#include <iostream>
#include <fstream>
#include <iomanip>
#include "ppc_altivec.h"

using namespace std;

int main(){
    ppc_avr_t avr[32];
    int num;

    ifstream infile1("vector_gpr.txt");

	//read input file
    //while(!infile1.eof()){
        for(int i=0; i<32; i++){
            //infile1.ignore(3);
            infile1>>num>>hex>>avr[i].u32[0]>>avr[i].u32[1]>>avr[i].u32[2]>>avr[i].u32[3];
            //cout<<i<<hex<<setw(10)<<avr[i].u32[0]<<setw(10)<<avr[i].u32[1]<<setw(10)<<avr[i].u32[2]<<setw(10)<<avr[i].u32[3]<<endl;
        }
    //}

    string ins;
    int vra,vrb,vrt;

	//read instruction
    ifstream infile2("instruction.txt");

    while(!infile2.eof()){
        infile2>>ins>>vrt>>vra>>vrb;
        //TODO:add more instruction
        if(ins == "vaddsws")
            vaddsws (avr[vrt], avr[vra], avr[vrb]);
        else if(ins == "vsububm")
            vsububm (avr[vrt], avr[vra], avr[vrb]);
        else if(ins == "vavgsh")
            vavgsh  (avr[vrt], avr[vra], avr[vrb]);
        else if(ins == "vcmpequh")
            vcmpequh(avr[vrt], avr[vra], avr[vrb]);
        else if(ins == "vslb")
            vslb    (avr[vrt], avr[vra], avr[vrb]);
    }
	
	//output the result
    ofstream outfile("vector_gpr.txt");
    for(int i=0; i<32; i++)
        	outfile<<setw(2)<<dec<<setfill('0')<<i<<" "
                 <<setw(8)<<hex<<setfill('0')<<avr[i].u32[0]<<" "
                 <<setw(8)<<hex<<setfill('0')<<avr[i].u32[1]<<" "
                 <<setw(8)<<hex<<setfill('0')<<avr[i].u32[2]<<" "
                 <<setw(8)<<hex<<setfill('0')<<avr[i].u32[3]<<endl;

}
