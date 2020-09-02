# FPS-Unlock-KoGaMa
FPS Unlock for KoGaMa

# Como funciona o FPS Unlock KoGaMa

Ele simplesmente adiciona no processo do kogama uma dll externa que executar uma função da Unity que alterar o limite de FPS.

Esse é um exemplo de como ele funciona:
```cs
using UnityEngine;

public class Example
{
    void Start()
    {
        // Make the game run as fast as possible
        Application.targetFrameRate = 300;
        // Enable Custom FPS
        QualitySettings.vSyncCount = 0;
    }
}
```

# Download

