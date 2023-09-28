## QAM
Quadrature Amplitude Modulation (QAM) is a modulation technique that uses both amplitude and phase variations on two orthogonal carriers to encode digital data.

### Method
This experiment involves creating a MATLAB simulation program for 16-QAM and using the Monte Carlo method to estimate the bit error rate (BER). It is then extended to develop a simulation program for 64-QAM, and a comparative analysis is conducted between the two. To calculate the error rate, we first set the Signal-to-Noise Ratio (SNR) in decibels, one for use in simulations and another for theoretical calculations. Next, we generate a data source corresponding to the constellation diagram.

- 16-QAM constellation diagram  
![image](https://user-images.githubusercontent.com/128220508/226310112-3ea5057b-5f2b-49d1-bfeb-c9f7f8ec4ff4.png)  

- 64-QAM constellation diagram  
![image](https://user-images.githubusercontent.com/128220508/226310578-3f4d0d15-8110-4ce0-91aa-425578357599.png)  

- Matlab creates a 16-QAM constellation diagram
```js
mapping=[
-3*d   3*d;
  -d   3*d;
   d   3*d;
 3*d   3*d;
-3*d     d;
  -d     d;
   d     d;
 3*d     d;
-3*d    -d; 
  -d    -d; 
   d    -d;
 3*d    -d;
-3*d  -3*d;
  -d  -3*d;
   d  -3*d;
 3*d  -3*d];
```

- Matlab creates a 64-QAM constellation diagram
```js
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
```

### Result
![prob_07_10](https://user-images.githubusercontent.com/128220508/226311606-b0970e60-ddd1-4a58-9f6f-8f5118682774.png)  
From the experiment, we can observe that the simulated error rate and the theoretical error rate converge, validating the simulation results. Additionally, comparing 16-QAM and 64-QAM confirms that as the constellation points increase, the error rate tends to rise.

### Reference
https://zh.wikipedia.org/wiki/%E6%AD%A3%E4%BA%A4%E5%B9%85%E5%BA%A6%E8%B0%83%E5%88%B6  
https://www.ni.com/zh-tw/innovations/white-papers/06/quadrature-amplitude-modulation--qam-.html


