function set_proxy {
	Set-Item Env:http_proxy "http://127.0.0.1:8090"
	Set-Item Env:https_proxy "http://127.0.0.1:8090"
}

function unset_proxy {
    Remove-Item Env:http_proxy
    Remove-Item Env:https_proxy
}

Import-Module oh-my-posh
Set-PoshPrompt -Theme ~/.config/moonnarga.json

Set-PSReadLineOption -PredictionSource History # 设置预测文本来源为历史记录
 
Set-PSReadlineKeyHandler -Key Tab -Function Complete # 设置 Tab 键补全
Set-PSReadLineKeyHandler -Key "Ctrl+d" -Function MenuComplete # 设置 Ctrl+d 为菜单补全和 Intellisense
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo # 设置 Ctrl+z 为撤销
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward # 设置向上键为后向搜索历史记录
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward # 设置向下键为前向搜索历史纪录

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Anaconda

set_proxy