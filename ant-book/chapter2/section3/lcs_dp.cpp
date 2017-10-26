/*
  dp[i][j] := s1,s2,...,siとt1,t2,...,tjに対するLCS(最長共通部分列)の長さ
  
  s1,...,s{i+1}とt1,...,t{j+1}に対する共通部分列は
  1. s{i+1} = t{j+1}ならばs1,...,siとt1,...,tjに対する共通部分列にs{i+1}を加えたもの
  2. s1,...,siとt1,...,t{j+1}に対する共通部分列
  3. s1,...,s{i+1}とt1,...,t{j}に対する共通部分列
  のどれか
  dp[i+1][j+1] = max(dp[i][j]+1, dp[i][j+1], dp[i+1][j]) if s{i+1} = t{j+1}
               = max(dp[i][j+1], dp[i+1][j])             otherwise
 */

int n,m;
char s[MAX_N],t[MAX_M];

int dp[MAX_N+1][MAX_M+1];//dpテーブル

void solve(){
  for(int i=0;i<n;i++){
    for(int j=0;j<m;j++){
      if(s[i] == t[j]){
