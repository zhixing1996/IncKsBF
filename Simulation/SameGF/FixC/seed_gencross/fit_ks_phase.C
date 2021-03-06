#include <iostream>
#include <cstdlib>
#include <fstream>
#include <cmath>
#include <complex>
#include "TF1.h"
#include "TCanvas.h"
#include "TGraph.h"
#include "TGraphErrors.h"
#include "TStyle.h"
#include "TLegend.h"
#include "TAxis.h"
#include "TFile.h"
#include <ctime>
#include <iomanip>
#include <stdio.h>      /* printf */
#include <math.h>       /* sin */
#include <TMath.h>       /* sin */

using namespace std;
const double alpha = 1.0/137;
const double  alpha2= 1.0/137./137.;
const double  pi = 3.14159265359;
const double  pi2 = 9.86960440109;
const double  me= 0.511e-3;
const double  me2= 0.511*0.511e-6;
const int Nvac=500;
double Evac[Nvac];
double CSvac[Nvac];
const int Nqed=110;
double Eqed[Nqed];
double CSqed[Nqed];
double eCSqed[Nqed];

double vacc(double W){
for(int i=0; i<Nvac; i++){
		if(W>=Evac[i]&&W<Evac[i+1]){
		if(Evac[i]!=Evac[i+1]) return CSvac[i]+(W-Evac[i])*(CSvac[i+1]-CSvac[i])/(Evac[i+1]-Evac[i]);
			else{
				cerr<<"Error: x1=x2,this is not permitted"<<endl;
				exit(-1);
			}
		}
	}
}

double vpfl(double ml, double s){
	double a2=1.0-4.*ml*ml/s;
	double a=sqrt(a2);
	double b=(1.0-a)/(1.0+a);
	double vpfl=alpha/pi*(8./9.-alpha2/3+a*(0.5-a2/6)*log(b));
}


double vpft(double s){   // vacuum polorization function of leptons
	double me=0.511e-3;
	double mmu=0.106;
	double mtau=1.777;
	double mu=2.3e-3;
	double md=4.8e-3;
	double ms=9.5e-2;
	double mc=1.275;
	double mb=4.18;
	double mt=173;
	return (vpfl(me,s)+vpfl(mu,s)+vpfl(mtau,s));
}


double phi(double scos,double y){
	double theta=acos(scos);
	double sinp=sin(theta*(1-y));
	double ssin=sin(theta);
	double sinpy=sin(pi*y);
	return (pi*y*sinp)/(ssin*sinpy);
}

double rescs(double *ecm0,double *par){
	double s=ecm0[0]*ecm0[0];
	double MJ=par[0];
	double MJ2=par[0]*par[0];
	double GT=par[1];
	double GT2=par[1]*par[1];
	double GE=par[2];
	double res=par[3];
	double ecm=par[4];
	double phase=par[5]*TMath::Pi()/180.0;   
	double C=par[6];
	double A=par[8];
	double GF=par[7];
	double Emin=1.4;
	
	double beta = 2.0*alpha/pi*(2.0*log(ecm0[0]/me)-1.0);
	double delta= 0.75*beta+alpha/pi*(pi2/3.0-0.5)+beta*beta*(9./32.-pi2/12.);
	double a2=pow((1.0-MJ2/s),2)+MJ2*GT2/s/s;
	double a=sqrt(a2);
	double scos=1./a*(MJ2/s-1.);
	double ssin=sqrt(1-scos*scos);
	double Xf=1.-4.*Emin*Emin/s;
	
	double C1=(8.*pi*alpha*sqrt(GE*GF)/MJ*((s-MJ2)*(C*cos(phase)+1.)+C*MJ*GT*sin(phase)) + 12.*pi*(GE*GF/MJ2)*s*(1.+C*C+2.*C*cos(phase)))/s/s;
	double C2=(8.*pi*alpha*sqrt(GE*GF)/MJ*(C*cos(phase)+1.)+12.*pi*GE*GF/MJ2*(1.+C*C+2.*C*cos(phase)))/s;
	double Xf0 = pow(Xf,beta)/(beta);
	double Xf1 = pow(Xf,beta-1.)/(beta-1.);
	double Xf2 = pow(Xf,beta-2.)/(beta-2.);
	double Xf3 = pow(Xf,beta-3.)/(beta-3.);
	double Xf4 = pow(Xf,beta-4.)/(beta-4.);
	double R2=2.*(s-MJ2)/s;
	double R3=a2*(4.*cos(beta)*cos(beta)-1.);
	
	double temp1=C1*(1+delta)*(pow(a,beta-2)*phi(scos,beta)+beta*(Xf2+Xf3*R2+Xf4*R3));
	double temp2=(-1.0*beta*(1+delta)*C2-(beta+beta*beta/4.)*C1)*(pow(a,beta-1)/(1+beta)*phi(scos,beta+1)+Xf1+Xf2*R2+Xf3*R3);
	double temp3=(0.5*log((Xf*Xf+2.*a*Xf*scos+a2)/a2)-scos/ssin*(atan((Xf+a*scos)/(a*ssin))-pi/2.+(asin(ssin)+acos(scos))/2.0))*((beta+beta*beta/4.)*C2+(beta/2.-beta*beta*3./8)*C1); 
	double inter=(A/s)*(A/s)*(temp1+temp2+temp3);
	
	double dXS=(1./sqrt(2*pi)/res*exp(-pow((ecm-ecm0[0]),2)/(2.*res*res)))*(inter)*389379.6623;//*pow(1.0/s,2);
	return dXS;
}

double qedxs(double s){
	double COEF=4.0*pi*alpha*alpha*389379.6623/3.0/s;//*sqrt(b)*(1.0+2.0*a);
	return COEF;
}

double funs(double *x, double *par){
	double s=par[0]*par[0];
	double beta = 2.0*alpha/pi*(log(s/me/me)-1.0);
	double dXS = beta*TMath::Power(x[0],beta-1)*qedxs(s*(1-x[0]));
	return dXS;
}

double funh(double *x, double *par){
	double s=par[0]*par[0];
	double Emin=1.4;
	double beta = 2.0*alpha/pi*(log(s/me/me)-1.0);
	double Xf=1.-4.*Emin*Emin/s;
	double A=par[1];
	double dXS=(A/s)*(A/s)*qedxs(s*(1-x[0]))*(1+beta/2.*(2*log(Xf)-log(1-Xf)+3./2.-Xf)+alpha/pi*(pi*pi/3.-1./2.));
	return dXS;
}


double intXS(double *ecm, double *par){
	double res=par[3];
	double hs =par[8]; // h(s)
	
	TF1 *fXS = new TF1("fXS", rescs, 3.05, 3.12, 9);
	fXS->SetParameter(0, par[0]); //mass of Jpsi
	fXS->SetParameter(1, par[1]); //total width of Jpsi
	fXS->SetParameter(2, par[2]); //Gamma_ee
	fXS->SetParameter(3, par[3]); //Gauss resolution
	fXS->SetParameter(4, ecm[0]); //initial energy
	fXS->SetParameter(5, par[4]); // relative phase angle
	fXS->SetParameter(6, par[5]); // Ratio of A_{3g}/A_{EM}
	fXS->SetParameter(7, par[7]); // GF
	fXS->SetParameter(8, par[6]); // form factor
	double my_intXS=fXS->Integral(TMath::Min(ecm[0],par[0])-20*res, TMath::Max(ecm[0],par[0])+20*res);
	
	double beta = 2.0*alpha/pi*(2.0*log(ecm[0]/me)-1.0);
	double delta= 0.75*beta+beta*beta/24.0*(1.0/3*log(ecm[0]/me/me)+2.0*pi*pi-37.0/4);
	double epsilon = 1.0e-8;
	double emin = 1.4;
	double UPL = 1.0-4.0*emin*emin/(ecm[0]*ecm[0]);
	TF1 *fXS_funs = new TF1("fXS_funs", funs, 0.0, 1.0, 1);
	fXS_funs->SetParameter(0, ecm[0]); //initial energy
	double my_intXS_qed1 = fXS_funs->Integral(epsilon, UPL);
	double my_intXS_qed2 = TMath::Power(epsilon,beta)*qedxs(ecm[0]*ecm[0]);//(86.8/(ecm[0]*ecm[0])), born cross section of mu+mu-
	TF1 *fXS_funh = new TF1("fXS_funh", funh, 0.0, 1.0, 2);
	fXS_funh->SetParameter(0, ecm[0]); //initial energy
	fXS_funh->SetParameter(1, par[6]); //form factor
	double my_intXS_qed3 = fXS_funh->Integral(0.0, UPL);
	double my_intXS_qed = hs*( my_intXS_qed3); //
	
	return my_intXS+my_intXS_qed;
}

int main(){
	gStyle->SetOptFit(100);
	std::cout<<setprecision(12);
	ifstream vacfile("vacc.dat");//,ios::in);
	for(int i=0;i<Nvac;i++){
		vacfile>>Evac[i]>>CSvac[i];
	}
	
	TCanvas * canvas=new TCanvas("canvas","canvas",10,10,610,610);
	
	TF1 * thecs=new TF1("thecs",intXS,3.04,3.13,9);
	thecs->SetParName(0, "Jpsi mass"); //set the parameter of intXS
	thecs->FixParameter(0, 3.09746);
	thecs->SetParName(1, "Jpsi totalwidth");
	thecs->FixParameter(1, 92.9E-6);
	thecs->SetParName(2, "Jpsi ee width");
	thecs->FixParameter(2, 5.54e-6);
	thecs->SetParName(3, "resolution");
	thecs->FixParameter(3, 9.11483e-04);
	thecs->SetParName(4, "phase angle"); // relative phase angle
	thecs->FixParameter(4, 90); 
	thecs->SetParName(5, "C"); // the ratio of |A_{3g}|/|A_{EM}|
	thecs->SetParameter(5, 10); 
	thecs->SetParName(6, "A"); // form factor
	thecs->SetParameter(6, 12.5474); 
	thecs->SetParName(7, "GF"); // width of J/psi->f
	thecs->SetParameter(7, 3.324 * 0.000000001); 
	thecs->SetParName(8, "hs"); // the ratio of |A_{cont}|/|A_{EM}|
	thecs->SetParameter(8, seed_hs);
	
	const int Npoints=16;
	double ecm0[Npoints],expcs[Npoints],ecm0err[Npoints],expcserr[Npoints], expcs_cor[Npoints], expcserr_cor[Npoints];
	ecm0[0] =3.050213; ecm0err[0] =0.026E-3;
	ecm0[1] =3.059257; ecm0err[1] =0.028E-3;
	ecm0[2] =3.080195; ecm0err[2] =0.023E-3;
	ecm0[3] =3.083060; ecm0err[3] =0.043E-3;
	ecm0[4] =3.089418; ecm0err[4] =0.022E-3;
	ecm0[5] =3.092324; ecm0err[5] =0.025E-3;
	ecm0[6] =3.095261; ecm0err[6] =0.084E-3;
	ecm0[7] =3.095994; ecm0err[7] =0.081E-3;
	ecm0[8] =3.096390; ecm0err[8] =0.075E-3;
	ecm0[9] =3.097777; ecm0err[9] =0.076E-3;
	ecm0[10]=3.098904; ecm0err[10]=0.075E-3;
	ecm0[11]=3.099606; ecm0err[11]=0.093E-3;
	ecm0[12]=3.101923; ecm0err[12]=0.106E-3;
	ecm0[13]=3.106144; ecm0err[13]=0.090E-3;
	ecm0[14]=3.112615; ecm0err[14]=0.093E-3;
	ecm0[15]=3.120442; ecm0err[15]=0.115E-3;
	
	TGraphErrors * grapherrors_cor=new TGraphErrors(Npoints,ecm0,expcs_cor,ecm0err,expcserr_cor); 
	// grapherrors_cor->Fit(thecs,"EV0");
	
	grapherrors_cor->GetXaxis()->SetTitle("E (GeV)");
	grapherrors_cor->GetYaxis()->SetTitle("cross section (nb)");
	
	grapherrors_cor->GetXaxis()->CenterTitle();
	grapherrors_cor->GetYaxis()->CenterTitle();
	grapherrors_cor->GetXaxis()->SetLabelOffset(0.01);
	grapherrors_cor->GetXaxis()->SetTitleOffset(0.90);
	grapherrors_cor->GetYaxis()->SetTitleOffset(1.22);
	grapherrors_cor->SetMarkerStyle(20);
	grapherrors_cor->SetMarkerSize(1.1);
	grapherrors_cor->SetMarkerColor(2);
	grapherrors_cor->SetLineColor(2);
	thecs->SetNpx(499);
	
	grapherrors_cor->Draw("ape");
	thecs->SetLineColor(4);
	thecs->Draw();
	
	std::vector<double> xfit,yfit;xfit.clear();yfit.clear();
	for(int jj=0;jj<Npoints;jj++){
		double eval = thecs->Eval(ecm0[jj]);
		xfit.push_back(ecm0[jj]);
		yfit.push_back(eval);
	}
	
	ofstream fitdat("cross_section.txt");
	for(int jj=0;jj<Npoints;jj++){
	fitdat<<xfit[jj]<<" "<<yfit[jj]<<endl;
	}
	
	double MJ=thecs->GetParameter(0);
	double GJ=thecs->GetParameter(1);
	double C=thecs->GetParameter(5);
	double A=thecs->GetParameter(6);
	double GF=thecs->GetParameter(7);
	double Br=A*A*GF*(C*C+1)/(MJ*MJ*MJ*MJ*GJ);
	
	ofstream BR("branch_ratio.txt");
	BR<<Br<<endl;
	
	cout<<"chi2: "<<thecs->GetChisquare()<<"      ndf: "<<thecs->GetNDF()<<"    prob: "<<thecs->GetProb()<<endl;
	cout<<"Mass J/psi: "<<thecs->GetParameter(0)<<" +/- "<<thecs->GetParError(0)<<endl;
	cout<<"Gamma J/psi: "<<thecs->GetParameter(1)<<" +/- "<<thecs->GetParError(1)<<endl;
	cout<<"Gamma ee: "<<thecs->GetParameter(2)<<" +/- "<<thecs->GetParError(2)<<endl;
	cout<<"Resolution: "<<thecs->GetParameter(3)<<" +/- "<<thecs->GetParError(3)<<endl;
	cout<<"Phase Angle: "<<thecs->GetParameter(4)<<" +/- "<<thecs->GetParError(4)<<endl;
	cout<<"C: "<<thecs->GetParameter(5)<<" +/- "<<thecs->GetParError(5)<<endl;
	cout<<"A: "<<thecs->GetParameter(6)<<" +/- "<<thecs->GetParError(6)<<endl;
	cout<<"Gamma f: "<<thecs->GetParameter(7)<<" +/- "<<thecs->GetParError(7)<<endl;
	cout<<"h(s): "<<thecs->GetParameter(8)<<" +/- "<<thecs->GetParError(8)<<endl;
	cout<<"Br: "<<Br<<endl;
	
	canvas->SaveAs("fit_ks_phase.root");
	return 0;
}
