@echo off
title Transcritor de Video (feche esta janela para encerrar)
echo Abrindo o Transcritor no navegador...
echo Deixe esta janela aberta enquanto usa. Feche-a quando terminar.
start "" http://localhost:8765/
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$html = [IO.File]::ReadAllBytes('%~dp0transcritor.html');" ^
  "$l = New-Object System.Net.HttpListener; $l.Prefixes.Add('http://localhost:8765/'); $l.Start();" ^
  "while ($l.IsListening) { $c = $l.GetContext(); $c.Response.ContentType = 'text/html; charset=utf-8';" ^
  "$c.Response.OutputStream.Write($html, 0, $html.Length); $c.Response.Close() }"
