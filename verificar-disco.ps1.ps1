# Script para vereificar uso da unidade C:
# Gera alerta se uso fro maior que 90%

$unidade =Get-PSDrive C

$percentualUsado =
[math]::Round(($unidade.Used/
$unidade.maximum)*100,2)

if ($percentualUsado -gt 90) {Write-Host"$percentualUsado% de uso!"
}else {
Write-Host" Espaço suficiente. uso atual: $percentualUsado%"
}