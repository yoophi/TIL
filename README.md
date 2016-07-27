# Today I Learned (TIL)

프로그래머로 일하고 공부하며 오늘 배운 것들을 기록하기 위해 만든 문서입니다.
[MarkWiki][markwiki] 를 이용하여 문서를 관리하고 있습니다.

혹시라도 [MarkWiki][markwiki] 를 이용하여 이 페이지를 열어보시려면 
아래와 같은 방법으로 `markwiki` 를 실행하시고, <http://localhost:5000> 주소로 접속하면 됩니다.

```
$ pip install markwiki
$ git clone https://github.com/yoophi/TIL.git
$ cd TIL
$ MARKWIKI_HOME=$(pwd) markwiki
```


특정 포트를 사용하기 위해서는 `SERVER_PORT` 환경변수를 지정하면 됩니다.

```
$ MARKWIKI_HOME=$(pwd) SERVER_PORT=8000 markwiki
```

또는 [gunicorn][gunicorn] 으로 구동하기 위해 아래와 같이 실행해도 됩니다.


```
$ MARKWIKI_HOME=$(pwd) gunicorn markwiki:app -b 0.0.0.0:8000
```



[markwiki]: http://pythonhosted.org/MarkWiki/ "MarkWiki"
[gunicorn]: http://gunicorn.org