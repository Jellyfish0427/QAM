## QAM
正交震幅調變(QAM)是在兩個正交載波上進行震幅調變的一種調變方式。

### Method
這個實驗將 16-QAM 的 matlab 模擬程式，用 Monte Carlo method 推測錯誤位元速率，再繼續延伸做出 64-QAM 的模擬程式，
並探討其原理以及兩者的比較。  
要計算 error rate，首先設定 SNR(db)，一個使用在模擬，另一個使用在理論值的計算。接下來產生 data source，對應到星座圖上。

- 16-QAM星座圖  
![image](https://user-images.githubusercontent.com/128220508/226310112-3ea5057b-5f2b-49d1-bfeb-c9f7f8ec4ff4.png)  

- 64-QAM星座圖  
![image](https://user-images.githubusercontent.com/128220508/226310578-3f4d0d15-8110-4ce0-91aa-425578357599.png)  

- matlab建立16-QAM星座圖  
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

- matlab建立64-QAM星座圖  
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
由實驗中我們可以發現模擬的錯誤率和理論的錯誤率會趨於一致，驗證了模擬的結果。並比較16-QAM和64-QAM可以驗證當星座點越多，錯誤率會越高。

### Reference
https://zh.wikipedia.org/wiki/%E6%AD%A3%E4%BA%A4%E5%B9%85%E5%BA%A6%E8%B0%83%E5%88%B6  
https://www.ni.com/zh-tw/innovations/white-papers/06/quadrature-amplitude-modulation--qam-.html


