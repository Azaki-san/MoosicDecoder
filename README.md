# Moosic Decoder

CLI-утилита для дешифровки .encoded файлов в .mp3 с восстановлением названий треков (если есть теги ID3).

## Использование

```bash
./moosic-decoder --input ./encrypted --output ./decoded
```

- `--input` — путь к папке с .encoded файлами
- `--output` — куда сохранять расшифрованные .mp3

## Сборка вручную

```bash
make           # для вашей ОС
make windows   # .exe для Windows
make linux     # бинарь под Linux
make mac       # для macOS ARM64
```
