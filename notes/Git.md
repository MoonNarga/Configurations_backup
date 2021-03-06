# Git记录  

## 设置git默认编辑器  
```  
git config --global core.editor Code  
git config --global core.editor "vim"  
```  

## Git代理设置  
- ### 查看当前代理  
    ```  
    git config --global http.proxy  
    git config --global https.proxy  
    ```  
- ### 设置Git代理  
    ```
    git config --global http.proxy 'http://127.0.0.1:1080'
    git config --global https.proxy 'https://127.0.0.1:1080'
    ```
    或使用socks5等代理  
    
- ### 取消git代理  
    ```
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    ```

## 设置签名  
```  
git config [--global] user.name username
git config [--global] user.email useremail
```  
## Git操作  

- ### 建立仓库  
    `git init`  
- ### 查看Git仓库状态  
    `git status`  
- ### 追踪文件  
    `git add <file>`  
- ### 取消追踪  
    `git rm --cached <file>`  
- ### 提交更改
    ```
    git commit <file>
    git commit -m "***" <file>
    #将***作为commit记录描述
    ```  

- ### 撤销修改  
    `git checkout -- <file>`  

- ### 查看日志
    ```
    git log               #空格向下翻页 b向上翻页 q退出
    git log --pretty=oneline
    git log --oneline
    git reflog
    ```

- ### 版本移动
	基于索引值  
	`git reset --hard [索引]`  
	使用^符号(只能后退  
	`git reset --hard HEAD^	#根据^数量决定后退步数`  
	使用~符号(只能后退  
	`git reset --hard HEAD~n	#后退n步`  

	reset命令三个参数--mixed --hard  
	--soft 仅在本地库移动HEAD指针  
	--mixed 在本地库移动HEAD指针，重置缓存区  
	--hard 在本地库移动HEAD指针，重置缓存区，重置工作区  

- ### 比较文件差异  
    ```  
    git diff <file>	#将工作区文件与暂存区比较
    git diff [本地库历史版本] <file>	#将工作区文件与本地库历史记录比较
	#不带文件名比较多个文件
    ```  

- ### 分支管理
    - 查看分支
    `git branch -v`  
    - 创建分支
    `git branch <branchname>`  
    - 切换分支
    `git checkout <branchname>`  
    - 合并分支
        1. 切换到接受修改的分支
        `git merge <branchname>`  
        2. 解决冲突  
            1. 编辑冲突文件，删除特殊符号  
            2. 修改文件  
                ```  
                git add <file>
			    git commit [-m "**"]
                ```  

- ### 远程仓库交互  
    - 查看远程仓库  
    `git remote -v`  
    - 添加远程仓库  
    `git remote add <别名> <url>`  
    - 推送  
    `git push <别名> <branchname>`  
    - 抓取  
    `git fetch <别名>`  
    - 合并到本地库
    `git merge <别名>/<branchname>`  