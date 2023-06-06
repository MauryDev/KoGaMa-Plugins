---@meta LogicAPI


---@class ConnectorType
---@field In 1
---@field Out 2
---@field ObjectConnector 4
---@field Object 8

---@class IntVector
---@field x integer
---@field y integer
---@field z integer


---@class Vector3
---@field x number
---@field y number
---@field z number

---@class LogicBase
---@field id integer
---@field realId integer
---@field type integer
---@field AddIn fun(...:LogicBase):nil
---@field AddOut fun(...:LogicBase):nil
---@field AddConnectorObject fun(...:LogicBase):nil
---@field AddInObject fun(...:LogicBase):nil
---@field SetPosition fun(v3: Vector3): nil
---@field SetRotation fun(euler: Vector3): nil
---@field GetRotation fun(): Vector3
---@field GetPosition fun(): Vector3
---@field Destroy fun(): nil
---@field worldobject table

---@class LogicModel_Execute
---@field AddCube fun(intv: IntVector,materialId: integer): nil
---@field RemoveCube fun(intv: IntVector): nil
---@field GetMaterial fun(intv: IntVector): integer
---@field ContainsCube fun(intv: IntVector): boolean
---@field ReplaceCube fun(intv: IntVector,materialId: integer): boolean


---@class LogicModel : LogicBase
---@field Execute fun(callback: fun(modelmanager: LogicModel_Execute):any):nil

---@class LogicPressurePlate : LogicBase
---@field SetHide fun(value: boolean):nil

---@class LogicDelayCube : LogicBase
---@field SetDelay fun(value: number):nil
---@field SetDuration fun(value: number):nil

---@class LogicCountingCube : LogicBase
---@field SetStartingValue fun(value: integer):nil
---@field SetReset fun(value: boolean):nil

---@class LogicFire : LogicBase
---@field SetColor fun(value: integer[]):nil
---@field SetIntensity fun(value: number):nil

---@class LogicGlobalSpeaker : LogicBase
---@field SetVolume fun(value: number):nil
---@field SetPitch fun(value: number):nil
---@field SetUrl fun(value: string):nil

---@class LogicSpeaker : LogicBase
---@field SetVolume fun(value: number):nil
---@field SetPitch fun(value: number):nil
---@field SetRange fun(value: number):nil
---@field SetMute fun(value: boolean):nil
---@field SetLoop fun(value: boolean):nil
---@field SetUrl fun(value: string):nil

---@class LogicLever : LogicBase
---@field SetBeginActivated fun(value: boolean):nil

---@class LogicModelHider : LogicBase
---@field SetShowOutline fun(value: boolean):nil

---@class LogicPointLight : LogicBase
---@field SetIntensity fun(value: number):nil
---@field SetRange fun(value: number):nil
---@field SetHide fun(value: boolean):nil
---@field SetHalo fun(value: integer):nil
---@field SetColor fun(value: integer[]):nil

---@class LogicPulseBox : LogicBase
---@field SetIntervalOn fun(value: number):nil
---@field SetIntervalOff fun(value: number):nil

---@class LogicSkybox : LogicBase
---@field SetSunAngle fun(value: number):nil
---@field SetFogDensity fun(value: number):nil
---@field SetColor fun(value: integer[]):nil


---@class LogicSmoke : LogicBase
---@field SetWind fun(value: number):nil
---@field SetLength fun(value: number):nil
---@field SetColor fun(value: integer[]):nil

---@class LogicTargetCube : LogicBase
---@field SetDuration fun(value: number):nil

---@class LogicText : LogicBase
---@field SetText fun(value: string):nil
---@field SetTextSize fun(value: number):nil

---@class LogicToggleBox : LogicBase
---@field SetOnce fun(value: boolean):nil

---@class LogicTriggerCube : LogicBase
---@field SetScaleX fun(value: number):nil
---@field SetScaleY fun(value: number):nil
---@field SetScaleZ fun(value: number):nil

---@class LogicGroup : LogicBase
---@field Execute fun(value: fun(): any):nil

---@class LogicWindTurbine : LogicBase
---@field SetWindSize fun(value: number):nil
---@field SetWindPitch fun(value: number):nil

---@class Vector3_Static
---@field new fun(x: number,y: number,z: number): Vector3
---@field ToByteArray fun(v3: Vector3): userdata
---@field FromByteArray fun(bp: userdata): Vector3

---@class IntVector_Static
---@field new fun(x: integer,y: integer,z: integer): IntVector
---@field ToByteArray fun(ivec: IntVector): userdata
---@field FromByteArray fun(bp: userdata): IntVector



---@class LogicManager
---@field GetLinksCount fun(): integer
---@field GetObjectLinksCount fun(): integer
---@field GetWorldObjectsCount fun(): integer
---@field GetPrototypesCount fun(): integer
---@field Execute fun(callback: fun(logicmanager: LogicManager): nil)
---@field GetLogic fun(id: number): LogicBase
---@field Create_And fun(): LogicBase
---@field Create_CountingCube fun(): LogicCountingCube
---@field Create_DelayCube fun(): LogicDelayCube
---@field Create_Explosives fun(): LogicBase
---@field Create_Fire fun(): LogicFire
---@field Create_GlobalSpeaker fun(): LogicGlobalSpeaker
---@field Create_Lever fun(): LogicLever
---@field Create_Model fun(scale: number): LogicModel
---@field Create_ModelHider fun(): LogicModelHider
---@field Create_Negate fun(): LogicBase
---@field Create_PointLight fun(): LogicPointLight
---@field Create_PressurePlate fun(): LogicPressurePlate
---@field Create_PulseBox fun(): LogicPulseBox
---@field Create_RandomCube fun(): LogicBase
---@field Create_Skybox fun(): LogicSkybox
---@field Create_Smoke fun(): LogicSmoke
---@field Create_Speaker fun(): LogicSpeaker
---@field Create_TargetCube fun(): LogicTargetCube
---@field Create_Text fun(): LogicText
---@field Create_ToggleBox fun(): LogicToggleBox
---@field Create_TriggerCube fun(): LogicTriggerCube
---@field Create_WindTurbine fun(): LogicWindTurbine
---@field Create_Group fun(): LogicGroup


---@class LogicAPI
---@field Root LogicManager
---@field new fun():LogicManager
---@field ConnectorType ConnectorType
---@field IntVector IntVector_Static
---@field Vector3 Vector3_Static

---@type LogicAPI
local ret = {}
return ret