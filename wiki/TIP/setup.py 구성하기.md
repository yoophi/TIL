# `setup.py` 구성하기 

설치되어 있는 패키지들의 목록을 구성하기 번거로웠는데, `setuptools.find_packages` 를 이용하면
아래와 같이 간단하게 구성할 수 있다.


```
from distutils.core import setup
from setuptools import find_packages


setup(
    name=PACKAGE_NAME,
    version=VERSION,
    packages=[pkg for pkg in find_packages() if not t.startswith('test')],
    author=AUTHOR,
    author_email=AUTHOR_EMAIL,
)
```