function set_proxy {
    param (
        $ip = "127.0.0.1",
        $port = "8090"
    )

    Set-Item Env:http_proxy "http://${ip}:${port}"
    Set-Item Env:https_proxy "http://${ip}:${port}"
}
	
function unset_proxy {
    Remove-Item Env:http_proxy
    Remove-Item Env:https_proxy
}

set_proxy

oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config "~/.config/moonnarga.omp.json" | Invoke-Expression