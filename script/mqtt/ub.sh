sudo apt install mosquitto mosquitto-clients

read -p "ctrl+c | press key to publish message"

mosquitto_pub -h 127.0.1.1 -p 1883 -t anton -m "hello"
