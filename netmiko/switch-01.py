#!/usr/bin/python

from netmiko import ConnectHandler

net_connect = ConnectHandler(device_type='cisco_ios', ip='172.16.31.7', username='bobs', password='!!_password_!!') 

net_connect.send_command("enable\n!!_password_!!")

net_connect.send_command("copy running-config tftp://172.16.41.7/switch-01.txt\n")

net_connect.send_command("y")

net_connect.send_command("exit")

net_connect.send_command("exit")
