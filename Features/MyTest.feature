Feature: Realizacion de casos ingresando nombre de usuario y contrase�a

Scenario: Verificacion de ingreso de sesion

Given Abrir Chrome

When ingresa Username "user1" y Password "user1"

Then inicia sesion