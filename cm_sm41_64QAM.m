function [p]=cm_sm41_64QAM(snr_in_dB)
% [p]=cm_sm41(snr_in_dB)
%		CM_SM41  finds the probability of error for the given
%   		value of snr_in_dB, SNR in dB.
N=20000;
d=1;				  	% min. distance between symbols
Eav=20*d^2;		 	  	% energy per symbol
snr=10^(snr_in_dB/10);	 	  	% SNR per bit (given)
sgma=sqrt(Eav/(7*snr));	  	  	% noise variance
M=64;
% Generation of the data source follows.
for i=1:N
  temp=rand;		        	  	% a uniform R.V. between 0 and 1
  dsource(i)=1+floor(M*temp);	  	% a number between 1 and 16, uniform 
end
% Mapping to the signal constellation follows.
mapping=[
    -7*d  7*d;
    -5*d  7*d;
    -3*d  7*d;
      -d  7*d;
     7*d  7*d;
     5*d  7*d;
     3*d  7*d;
       d  7*d; 
    -7*d  5*d;
    -3*d  5*d;
    -5*d  5*d;
      -d  5*d;
     7*d  5*d;
     3*d  5*d;
     5*d  5*d;
       d  5*d;  
    -7*d  3*d;
    -5*d  3*d;
    -3*d  3*d; 
	  -d  3*d; 
       d  3*d; 
	 3*d  3*d; 
     5*d  3*d;
     7*d  3*d;   
    -7*d    d;
    -5*d    d;
    -3*d    d; 
	  -d    d; 
	   d    d; 
	 3*d    d; 
     5*d    d;
     7*d    d;   
    -7*d   -d;
    -5*d   -d;
    -3*d   -d; 
	  -d   -d; 
	   d   -d;
     3*d   -d; 
     5*d   -d;
     7*d   -d;    
    -7*d -3*d;
    -5*d -3*d;
	-3*d -3*d; 
      -d -3*d; 
	   d -3*d; 
	 3*d -3*d; 
     5*d -3*d;
     7*d -3*d;  
    -7*d -5*d;
    -5*d -5*d;
    -3*d -5*d;
      -d -5*d;
       d -5*d;
     3*d -5*d;
     5*d -5*d;
     7*d -5*d;
    -7*d -7*d;
    -5*d -7*d;
    -3*d -7*d;
      -d -7*d;
     7*d -7*d;
     5*d -7*d;
     3*d -7*d;
       d -7*d;];
for i=1:N
  qam_sig(i,:)=mapping(dsource(i),:);
end
% received signal
for i=1:N
  n  = [sgma*randn sgma*randn];
  %[n(1) n(2)]=gngauss(sgma);
  r(i,:) = qam_sig(i,:) + n;
end
% detection and error probability calculation
numoferr=0;
choose=0;
for i=1:N
 min=10000;
    if(r(i,2)>=0)
        for j=1:(M/2)
            temp=(r(i,:)-mapping(j,:)).*(r(i,:)-mapping(j,:));
            if(sum(temp)<min)
                min=sum(temp);
                choose=j;
            end
        end
    else
        for j=(M/2):M
            temp=(r(i,:)-mapping(j,:)).*(r(i,:)-mapping(j,:));
            if(sum(temp)<min)
                min=sum(temp);
                choose=j;
            end
        end
    end
    decis=choose;

  if (decis~=dsource(i)),
    numoferr=numoferr+1;
  end;
end
p=numoferr/(N);		  