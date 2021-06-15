"
Patrones
"
Class {
	#name : #Dispositivo,
	#superclass : #Object,
	#instVars : [
		'connection',
		'crcCalculator',
		'ringer',
		'display'
	],
	#category : #'TP-DispositivoMovilYConexiones'
}

{ #category : #accessing }
Dispositivo >> connection [
	^ connection
]

{ #category : #accessing }
Dispositivo >> connection: anObject [
	connection := anObject
]

{ #category : #accessing }
Dispositivo >> crcCalculator [
	^ crcCalculator
]

{ #category : #accessing }
Dispositivo >> crcCalculator: anObject [
	crcCalculator := anObject
]

{ #category : #requirements }
Dispositivo >> send: datos [
	self connection sendData: datos and: (self crcCalculator crcFor: datos). 
]
