# FPS-Unlock-KoGaMa
FPS Unlock for KoGaMa

# Como funciona o FPS Unlock KoGaMa

Ele simplesmente adiciona no processo do kogama uma dll externa que executar uma função da Unity que alterar o limite de FPS.

Esse é um exemplo de como ele funciona:
```cs
using UnityEngine;

public class Example
{
    void Start(int fps)
    {
        // Make the game run as fast as possible
        Application.targetFrameRate = fps;
        // Enable Custom FPS
        QualitySettings.vSyncCount = 0;
    }
}
```

# Download

https://github.com/MauryDev/FPS-Unlock-KoGaMa/releases/

# Requisitos

- Windows 7 Service Pack 1,Windows 8 ou Windows 10
- .Net Framework 4.7.2 ou maior
- Microsoft Visual C++ 2015-2019 Redistributable

# Members

## Desenvolvedor
Maury Developer

## Testers
Daft

Derloco

## Criador do Icone
Turista264
