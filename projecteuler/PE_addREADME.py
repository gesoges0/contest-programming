import os
start = 1
end = 100
for i in range(start,end+1):
    try:
        # ディレクトリの作成
        os.system("mkdir problem{}".format(i))
        # READMEの作成
        os.system("echo '# problem{}' >> problem{}/README.md".format(i,i))
    except:
        pass