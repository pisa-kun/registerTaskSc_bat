## 自動でタスクスケジューラーにbatファイルを登録するサンプル

参考 : https://note.com/nerone1024/n/n5e470a82064f

> schtasks /create /tn "Hello World AppDataPath Sample" /tr %ProgramData%\BatSample\hello.bat /sc minute /mo 2 /ru system /rl highest /F

/ru systemをいれるとシステム権限起動になるので、ログインしてるユーザーにたいしてcmdが表示されなくなる・・・？