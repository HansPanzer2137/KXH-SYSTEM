import serial
import time
import random
import atexit

def main():
	s = serial.Serial("/dev/ttyACM0", 9600,timeout=2)
	try:
		time.sleep(2)
		print("Utworzyl serial")
		msg = "Connected"+'\n'+"KXH-RESEARCH service central"+'\n'+"Codename[###] Majster"+'\n'+"Service device initialized"+'\n'
		print(msg)
		s.write(msg.encode())
		print("Dostal")

		print((s.readline()).decode())

	except:
		print("nigga gay convent")

	finally:
		print("Quitting script...")
		quitSignal = "-1" + "\n"
		s.write(quitSignal.encode())

main()
