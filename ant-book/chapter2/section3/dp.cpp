#include <bits/stdc++.h>
using namespace std;

//dp[i][j]をi番目以降の品物から重さの総和がj以下となるように選んだときの価値の総和の最大値とする
//初期値
// dp[n][j] = 0
//漸化式
// dp[i][j] = dp[i+1][j] if j<w[i]:i番目の品物が許容領域よりも大きかったら
//          = max(dp[i+1][j], dp[i+1][j-w[i]]+v[i]):i番目の品物を入れた時と入れなかった時の最大値


int dp[MAX_N+1][MAX_W+1];//dpテーブル
void solve(){
  for(int i=n-1;i>=0;i--){
    for(int j=0;j<=W;j++){
      if(j<W[i]){
	dp[i][j] = dp[i+1][j];
      }else{
	do[i][j] = max(dp[i+1][j], dp[i+1][j-w[i]]+v[i]);
      }
    }
  }
  cout << dp[0][W] << endl;
}
