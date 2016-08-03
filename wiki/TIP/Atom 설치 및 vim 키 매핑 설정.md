# Atom 설치 및 vim 키 매핑 설정

## Atom 설치 

```
$ brew cask install atom
```

## vim 관련 package 설치 

```
$ atm install vim-mode-plus vim-mode-plus-ex-mode
```

## vim-mode-plus 설정 

- Atom 실행 후 
- Preferences... 
- Packages - vim-mode-plus - view code 열고, `vim-mode-plus/keymaps/vim-mode-plus.cson` 파일의 
  `'atom-text-editor.vim-mode-plus.normal-mode'` 라인 아래에 다음 항목 추가 

```
'atom-text-editor.vim-mode-plus.normal-mode':
  # ADD this lines
  ':': 'vim-mode-plus-ex-mode:open'
  '!': 'vim-mode-plus-ex-mode:toggle-setting'
```

종료 후 Atom 재시작할 것 