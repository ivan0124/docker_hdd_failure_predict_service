# docker_hdd_failure_predict_service

# How to test
- Step1: import below `node-red client` and run on the host PC.

![result link](https://github.com/ADVANTECH-Corp/hdd_failure_predict_service/blob/master/images/docker_20161202_4.png)

```json
[
	{
		"id": "798d72d4.42ad0c",
		"type": "inject",
		"z": "25827ce1.3df244",
		"name": "test data 1",
		"topic": "/ML_HDD/12345/predict",
		"payload": "{\"susiCommData\":{\"data\":{\"HDDMonitor\":{\"hddInfoList\":[{\"e\":[{\"n\":\"hddType\",\"sv\":\"STDDisk\"},{\"n\":\"hddName\",\"sv\":\"ST9250315AS\"},{\"n\":\"hddIndex\",\"v\":0},{\"n\":\"powerOnTime\",\"v\":14243,\"u\":\"hour\"},{\"n\":\"hddHealthPercent\",\"v\":100,\"u\":\"percent\"},{\"n\":\"hddTemp\",\"v\":31,\"u\":\"celsius\"}],\"bn\":\"Disk0-ST9250315AS\",\"ver\":1,\"asm\":\"R\"}],\"hddSmartInfoList\":[{\"BaseInfo\":{\"e\":[{\"n\":\"hddType\",\"sv\":\"STDDisk\"},{\"n\":\"hddName\",\"sv\":\"ST9250315AS\"},{\"n\":\"hddIndex\",\"v\":0}],\"bn\":\"BaseInfo\",\"asm\":\"R\"},\"FreeFallProtection\":{\"e\":[{\"n\":\"type\",\"v\":5},{\"n\":\"flags\",\"v\":12800},{\"n\":\"worst\",\"v\":100},{\"n\":\"value\",\"v\":100},{\"n\":\"vendorData\",\"sv\":\"00000000FD08\"}],\"bn\":\"FreeFallProtection\",\"asm\":\"R\"},\"UltraDMACRCErrorCount\":{\"e\":[{\"n\":\"type\",\"v\":9},{\"n\":\"flags\",\"v\":15872},{\"n\":\"worst\",\"v\":200},{\"n\":\"value\",\"v\":200},{\"n\":\"vendorData\",\"sv\":\"000000004E71\"}],\"bn\":\"UltraDMACRCErrorCount\",\"asm\":\"R\"},\"UncorrectableSectorCount\":{\"e\":[{\"n\":\"type\",\"v\":198},{\"n\":\"flags\",\"v\":4096},{\"n\":\"worst\",\"v\":100},{\"n\":\"value\",\"v\":100},{\"n\":\"vendorData\",\"sv\":\"000000000038\"}],\"bn\":\"UncorrectableSectorCount\",\"asm\":\"R\"},\"CurrentPendingSectorCount\":{\"e\":[{\"n\":\"type\",\"v\":197},{\"n\":\"flags\",\"v\":4608},{\"n\":\"worst\",\"v\":100},{\"n\":\"value\",\"v\":100},{\"n\":\"vendorData\",\"sv\":\"000000000038\"}],\"bn\":\"CurrentPendingSectorCount\",\"asm\":\"R\"},\"HardwareECCRecovered\":{\"e\":[{\"n\":\"type\",\"v\":187},{\"n\":\"flags\",\"v\":6656},{\"n\":\"worst\",\"v\":45},{\"n\":\"value\",\"v\":47},{\"n\":\"vendorData\",\"sv\":\"000000000349\"}],\"bn\":\"HardwareECCRecovered\",\"asm\":\"R\"},\"Temperature\":{\"e\":[{\"n\":\"type\",\"v\":194},{\"n\":\"flags\",\"v\":8704},{\"n\":\"worst\",\"v\":43},{\"n\":\"value\",\"v\":31},{\"n\":\"vendorData\",\"sv\":\"000000000016\"}],\"bn\":\"Temperature\",\"asm\":\"R\"},\"LoadCycleCount\":{\"e\":[{\"n\":\"type\",\"v\":193},{\"n\":\"flags\",\"v\":12800},{\"n\":\"worst\",\"v\":1},{\"n\":\"value\",\"v\":1},{\"n\":\"vendorData\",\"sv\":\"0000000356EC\"}],\"bn\":\"LoadCycleCount\",\"asm\":\"R\"},\"PoweroffRetractCount\":{\"e\":[{\"n\":\"type\",\"v\":192},{\"n\":\"flags\",\"v\":12800},{\"n\":\"worst\",\"v\":100},{\"n\":\"value\",\"v\":100},{\"n\":\"vendorData\",\"sv\":\"000000000008\"}],\"bn\":\"PoweroffRetractCount\",\"asm\":\"R\"}},{\"BaseInfo\":{\"e\":[{\"n\":\"hddType\",\"sv\":\"STDDisk\"},{\"n\":\"hddName\",\"sv\":\"HDD_Hello_123456\"},{\"n\":\"hddIndex\",\"v\":0}],\"bn\":\"BaseInfo\",\"asm\":\"R\"},\"FreeFallProtection\":{\"e\":[{\"n\":\"type\",\"v\":5},{\"n\":\"flags\",\"v\":12800},{\"n\":\"worst\",\"v\":100},{\"n\":\"value\",\"v\":100},{\"n\":\"vendorData\",\"sv\":\"00000001FD08\"}],\"bn\":\"FreeFallProtection\",\"asm\":\"R\"},\"UltraDMACRCErrorCount\":{\"e\":[{\"n\":\"type\",\"v\":9},{\"n\":\"flags\",\"v\":15872},{\"n\":\"worst\",\"v\":200},{\"n\":\"value\",\"v\":200},{\"n\":\"vendorData\",\"sv\":\"000000014E71\"}],\"bn\":\"UltraDMACRCErrorCount\",\"asm\":\"R\"},\"UncorrectableSectorCount\":{\"e\":[{\"n\":\"type\",\"v\":198},{\"n\":\"flags\",\"v\":4096},{\"n\":\"worst\",\"v\":100},{\"n\":\"value\",\"v\":100},{\"n\":\"vendorData\",\"sv\":\"000000000138\"}],\"bn\":\"UncorrectableSectorCount\",\"asm\":\"R\"},\"CurrentPendingSectorCount\":{\"e\":[{\"n\":\"type\",\"v\":197},{\"n\":\"flags\",\"v\":4608},{\"n\":\"worst\",\"v\":100},{\"n\":\"value\",\"v\":100},{\"n\":\"vendorData\",\"sv\":\"000000000138\"}],\"bn\":\"CurrentPendingSectorCount\",\"asm\":\"R\"},\"HardwareECCRecovered\":{\"e\":[{\"n\":\"type\",\"v\":187},{\"n\":\"flags\",\"v\":6656},{\"n\":\"worst\",\"v\":45},{\"n\":\"value\",\"v\":47},{\"n\":\"vendorData\",\"sv\":\"000000001349\"}],\"bn\":\"HardwareECCRecovered\",\"asm\":\"R\"},\"Temperature\":{\"e\":[{\"n\":\"type\",\"v\":194},{\"n\":\"flags\",\"v\":8704},{\"n\":\"worst\",\"v\":43},{\"n\":\"value\",\"v\":31},{\"n\":\"vendorData\",\"sv\":\"000000000116\"}],\"bn\":\"Temperature\",\"asm\":\"R\"},\"LoadCycleCount\":{\"e\":[{\"n\":\"type\",\"v\":193},{\"n\":\"flags\",\"v\":12800},{\"n\":\"worst\",\"v\":1},{\"n\":\"value\",\"v\":1},{\"n\":\"vendorData\",\"sv\":\"0000001356EC\"}],\"bn\":\"LoadCycleCount\",\"asm\":\"R\"},\"PoweroffRetractCount\":{\"e\":[{\"n\":\"type\",\"v\":192},{\"n\":\"flags\",\"v\":12800},{\"n\":\"worst\",\"v\":100},{\"n\":\"value\",\"v\":100},{\"n\":\"vendorData\",\"sv\":\"000000000018\"}],\"bn\":\"PoweroffRetractCount\",\"asm\":\"R\"}}]}}}}",
		"payloadType": "json",
		"repeat": "",
		"crontab": "",
		"once": false,
		"x": 163,
		"y": 111,
		"wires": [
			[
				"379fc5e2.cad99a"
			]
		]
	},
	{
		"id": "379fc5e2.cad99a",
		"type": "mqtt out",
		"z": "25827ce1.3df244",
		"name": "ML_predict",
		"topic": "/cagent/admin/123779999/deviceinfo",
		"qos": "0",
		"retain": "",
		"broker": "3f7efa38.0a4936",
		"x": 440,
		"y": 111,
		"wires": []
	},
	{
		"id": "eaaea3a9.3f1a1",
		"type": "debug",
		"z": "25827ce1.3df244",
		"name": "",
		"active": true,
		"console": "false",
		"complete": "false",
		"x": 428,
		"y": 196,
		"wires": []
	},
	{
		"id": "dd48b854.11f6f8",
		"type": "mqtt in",
		"z": "25827ce1.3df244",
		"name": "ML_predict_result",
		"topic": "/ML_HDD/+/predict_result",
		"qos": "0",
		"broker": "3f7efa38.0a4936",
		"x": 167,
		"y": 196,
		"wires": [
			[
				"eaaea3a9.3f1a1"
			]
		]
	},
	{
		"id": "3f7efa38.0a4936",
		"type": "mqtt-broker",
		"z": "25827ce1.3df244",
		"broker": "172.22.212.156",
		"port": "1883",
		"tls": null,
		"clientid": "",
		"usetls": false,
		"compatmode": true,
		"keepalive": "60",
		"cleansession": true,
		"willTopic": "",
		"willQos": "0",
		"willRetain": null,
		"willPayload": "",
		"birthTopic": "",
		"birthQos": "0",
		"birthRetain": null,
		"birthPayload": ""
	}
]
```
