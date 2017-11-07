import os

for i in range(1,101):
    # ディレクトリ作成
    os.system("mkdir problem%03d"%i)
    # README作成
    os.system("echo '# problem%03d'>>'./problem%03d/README.md'"%(i,i))