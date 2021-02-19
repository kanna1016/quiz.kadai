https://docs.docker.jp/docker-for-windows/install.html　  
↑docker for windows のダウンロード  
git hub 緑のcodeからhttpsをコピー  
フォルダ開いて  
PCのローカルディスクの(C:\)  
developフォルダを作成する  
developフォルダ内で右クリックのgit bash Hereをクリック  
git cloneと書いた後spaceキーを押してさっきコピーしたhttpsのURLを貼る  
developフォルダ内にquizフォルダが作成されていることを確認する  
visual Studio Codeを開く  
quizフォルダを開く  
上のツールバーのターミナルをクリックで新しいターミナル  
なんか下に出てきたら右のほうにある文字書いてる箱の下向き矢印を押して「既定のシェルの選択」  
Git bash を選択  
文字書いてる箱をbashにする  
git fetch origin develop エンター  
git checkout develop エンター   
ターミナルの下の文字の一番右の青い文字がdevelopになっているか確認する  
さっき出てきたターミナル内で  
cd _docker エンター  
docker-compose up -d　エンター  
winpty docker exec -it docker_web_1 bash　エンター 
次の行から色がつかなくなったら正解 
cd /var/www/html　エンター  
composer install　エンター（ちょっと時間かかる）  
mysql -h db -u root -p < ./_docker/dump.sql　エンター  
パスワードを要求されるからpassを打つ  
(打っても表示はされません)  
左のファイル名が並んでいるところから、歯車マークの.env.renameをさがす  
.env.renameのファイルを.env名前を変更する  