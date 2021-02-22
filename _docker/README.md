https://docs.docker.jp/docker-for-windows/install.html　
↑docker for windows のダウンロード
git hub 緑のcodeからhttpsをコピー
フォルダ開いて
PCのローカルディスクの(C:\)
右クリックのgit bash Hereをクリック
git cloneと書いた後spaceキーを押してさっきコピーしたhttpsのURLを貼る
フォルダにdevelopのフォルダができたことを確認する
フォルダのdevelopを開いてquizを開く
.env.renameのファイルを.env名前を変更する
visual Studio Codeを開く
quizフォルダを開く
上のツールバーのターミナルをクリックで新しいターミナル
ターミナルの下の文字の一番右の青い文字がdevelopになっているか確認する
developになってなかったら加藤栞奈か天野伸一に連絡してください
なんか下に出てきたら右のほうにある文字書いてる箱の下向き矢印を押して「既定のシェルの選択」
Git bash を選択
文字書いてる箱をbashにする
さっき出てきたターミナル内で
cd _docker エンター
docker-compose up -d　エンター
winpty docker exec -it docker_web_1　エンター
cd /var/www/html　エンター
composer install　エンター
mysql -h db -u root -p < ./_docker/dump.sql　エンター

