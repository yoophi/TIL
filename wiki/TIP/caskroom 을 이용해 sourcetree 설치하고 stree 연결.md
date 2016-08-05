# SourceTree 설치 및 `stree` 심볼릭 링크

```bash
$ brew cask install sourcetree
```

이후, SourceTree - Install Command Line Tools 메뉴를 선택하여 
`stree` 커맨드라인 유틸리티를 설치하려 할 경우 아래와 같은 오류가 발생했다.

> Installation failed
>
> Unable to install command line tools, please refer to the system logs for more details.

아래와 같은 명령으로 `brew cask` 를 이용해 설치된 SourceTree 의 `stree` 를 
심볼릭 링크해주면 된다.

```bash
$ ln -s $HOME/Applications/SourceTree.app/Contents/Resources/stree /usr/local/bin/
```