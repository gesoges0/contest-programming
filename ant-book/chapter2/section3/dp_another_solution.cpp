#include <bits/stdc++.h>
using namespace std;


/*
  dp[i+1][j] := i番目までの品物から重さの総和がj以下となるように選んだ時の価値の総和の最大値
  初期値
  dp[0][j] = 0
  漸化式
  dp[i+1][j] = dp[i][j] if j<w[i]
             = max(dp[i][j], dp[i][j-w[i]]+v[i]) otherwise
*/

void solve(){
  for(int i=0; i<n; i++){//商品i
    for(int j=0; j<=W; j++){//napsackに入っている荷物の重みの総和
      if(j < W[i]){
	dp[i+1][j] = dp[i][j];
      }else{
	dp[i+1][j] = max(dp[i][j], dp[i][j-w[i]]+v[i]);
      }
    }
  }
  cout << dp[n][W] << endl;
}
      
