# ConnectorType

## In


```lua
1
```

## Object


```lua
8
```

## ObjectConnector


```lua
4
```

## Out


```lua
2
```


---

# IntVector

## x


```lua
integer
```

## y


```lua
integer
```

## z


```lua
integer
```


---

# IntVector_Static

## FromByteArray


```lua
fun(bp: userdata):IntVector
```

## ToByteArray


```lua
fun(ivec: IntVector):userdata
```

## new


```lua
fun(x: integer, y: integer, z: integer):IntVector
```


---

# LogicAPI

## ConnectorType


```lua
ConnectorType
```

## IntVector


```lua
IntVector_Static
```

## Root


```lua
LogicManager
```

## Vector3


```lua
Vector3_Static
```

## new


```lua
fun():LogicManager
```


---

# LogicCountingCube

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetReset


```lua
fun(value: boolean):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## SetStartingValue


```lua
fun(value: integer):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicDelayCube

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetDelay


```lua
fun(value: number):nil
```

## SetDuration


```lua
fun(value: number):nil
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicFire

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetColor


```lua
fun(value: integer[]):nil
```

## SetIntensity


```lua
fun(value: number):nil
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicGlobalSpeaker

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetPitch


```lua
fun(value: number):nil
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## SetUrl


```lua
fun(value: string):nil
```

## SetVolume


```lua
fun(value: number):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicLever

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetBeginActivated


```lua
fun(value: boolean):nil
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicManager

## Create_And


```lua
fun():logicBase
```

## Create_CountingCube


```lua
fun():LogicCountingCube
```

## Create_DelayCube


```lua
fun():LogicDelayCube
```

## Create_Explosives


```lua
fun():logicBase
```

## Create_Fire


```lua
fun():LogicFire
```

## Create_GlobalSpeaker


```lua
fun():LogicGlobalSpeaker
```

## Create_Lever


```lua
fun():LogicLever
```

## Create_Model


```lua
fun(scale: number):LogicModel
```

## Create_ModelHider


```lua
fun():LogicModelHider
```

## Create_Negate


```lua
fun():logicBase
```

## Create_PointLight


```lua
fun():LogicPointLight
```

## Create_PressurePlate


```lua
fun():LogicPressurePlate
```

## Create_PulseBox


```lua
fun():LogicPulseBox
```

## Create_RandomCube


```lua
fun():logicBase
```

## Create_Skybox


```lua
fun():LogicSkybox
```

## Create_Smoke


```lua
fun():LogicSmoke
```

## Create_Speaker


```lua
fun():LogicSpeaker
```

## Create_TargetCube


```lua
fun():LogicTargetCube
```

## Create_Text


```lua
fun():LogicText
```

## Create_ToggleBox


```lua
fun():LogicToggleBox
```

## Create_TriggerCube


```lua
fun():LogicTriggerCube
```

## Create_WindTurbine


```lua
fun():LogicWindTurbine
```

## Execute


```lua
fun(callback: fun(logicmanager: LogicManager):nil)
```

## GetLinksCount


```lua
fun():integer
```

## GetLogic


```lua
fun(id: number):logicBase
```

## GetObjectLinksCount


```lua
fun():integer
```

## GetPrototypesCount


```lua
fun():integer
```

## GetWorldObjectsCount


```lua
fun():integer
```


---

# LogicModel

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## Execute


```lua
fun(callback: fun(modelmanager: LogicModel_Execute):any):nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicModelHider

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## SetShowOutline


```lua
fun(value: boolean):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicModel_Execute

## AddCube


```lua
fun(intv: IntVector, materialId: integer):nil
```

## ContainsCube


```lua
fun(intv: IntVector):boolean
```

## GetMaterial


```lua
fun(intv: IntVector):integer
```

## RemoveCube


```lua
fun(intv: IntVector):nil
```

## ReplaceCube


```lua
fun(intv: IntVector, materialId: integer):boolean
```


---

# LogicPointLight

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetColor


```lua
fun(value: integer[]):nil
```

## SetHalo


```lua
fun(value: integer):nil
```

## SetHide


```lua
fun(value: boolean):nil
```

## SetIntensity


```lua
fun(value: number):nil
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRange


```lua
fun(value: number):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicPressurePlate

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetHide


```lua
fun(value: boolean):nil
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicPulseBox

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetIntervalOff


```lua
fun(value: number):nil
```

## SetIntervalOn


```lua
fun(value: number):nil
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicSkybox

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetColor


```lua
fun(value: integer[]):nil
```

## SetFogDensity


```lua
fun(value: number):nil
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## SetSunAngle


```lua
fun(value: number):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicSmoke

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetColor


```lua
fun(value: integer[]):nil
```

## SetLength


```lua
fun(value: number):nil
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## SetWind


```lua
fun(value: number):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicSpeaker

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetLoop


```lua
fun(value: boolean):nil
```

## SetMute


```lua
fun(value: boolean):nil
```

## SetPitch


```lua
fun(value: number):nil
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRange


```lua
fun(value: number):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## SetUrl


```lua
fun(value: string):nil
```

## SetVolume


```lua
fun(value: number):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicTargetCube

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetDuration


```lua
fun(value: number):nil
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicText

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## SetText


```lua
fun(value: string):nil
```

## SetTextSize


```lua
fun(value: number):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicToggleBox

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetOnce


```lua
fun(value: boolean):nil
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicTriggerCube

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## SetScaleX


```lua
fun(value: number):nil
```

## SetScaleY


```lua
fun(value: number):nil
```

## SetScaleZ


```lua
fun(value: number):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# LogicWindTurbine

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## SetWindPitch


```lua
fun(value: number):nil
```

## SetWindSize


```lua
fun(value: number):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```


---

# Vector3

## x


```lua
number
```

## y


```lua
number
```

## z


```lua
number
```


---

# Vector3_Static

## FromByteArray


```lua
fun(bp: userdata):Vector3
```

## ToByteArray


```lua
fun(v3: Vector3):userdata
```

## new


```lua
fun(x: number, y: number, z: number):Vector3
```


---

# logicBase

## AddConnectorObject


```lua
fun(...logicBase):nil
```

## AddIn


```lua
fun(...logicBase):nil
```

## AddInObject


```lua
fun(...logicBase):nil
```

## AddOut


```lua
fun(...logicBase):nil
```

## Destroy


```lua
fun():nil
```

## GetPosition


```lua
fun():Vector3
```

## GetRotation


```lua
fun():Vector3
```

## SetPosition


```lua
fun(v3: Vector3):nil
```

## SetRotation


```lua
fun(euler: Vector3):nil
```

## id


```lua
integer
```

## realId


```lua
integer
```

## type


```lua
integer
```

## worldobject


```lua
table
```
