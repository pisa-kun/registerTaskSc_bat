@REM /create 追加、/tn タスク名、 /tr 実行するプログラム
@REM /sc 実行周期 /sc daily・minutesなど /mo Xおきに(scが日の場合、X=3の場合は3日おきに) /st 時間
@REM /ru system システム /rl highest 最上位権限 /F 同名タスク上書き

@REM schtasks /create /tn "Hello World AppDataPath Sample" /tr .\hello.bat /sc minute /mo 2
@REM ".\Hoge.bat" では0x01でタスクが終了する。原因はパスをフルパスにすること
@REM 全ユーザーでタスク実行させることを考えるのであれば、%ProgramData%にフォルダを作成してタスクファイルをcopyする
@REM 管理者権限起動時に備えて、copy %~dp0\hello.bat に変更
mkdir %ProgramData%\BatSample
copy %~dp0\hello.bat %ProgramData%\BatSample\hello.bat
schtasks /create /tn "Hello World AppDataPath Sample" /tr %ProgramData%\BatSample\hello.bat /sc minute /mo 2 /rl highest /F

PAUSE
@REM schtasks /create /tn "Hello World AppDataPath Sample" /tr .\hello.bat /sc daily /mo 1 /st 12:00