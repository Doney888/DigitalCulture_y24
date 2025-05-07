import socket

sock = socket.create_connection(('10.8.0.1', 1234))

data = sock.recv(16384)
udata = data.decode("utf-8")
print("Data: " + udata)
data = sock.recv(16384)
udata = data.decode("utf-8")
print("Data: " + udata)
data = sock.recv(16384)
udata = data.decode("utf-8")
print("Data: " + udata)
data = sock.recv(16384)
udata = data.decode("utf-8")
print("Data: " + udata)
data = sock.recv(16384)
udata = data.decode("utf-8")
print("Data: " + udata)

for i in range(60):
    sock.sendall(str(eval(udata)).encode("utf-8"))
    data = sock.recv(16384)
    udata = data.decode("utf-8")
    print("Data: " + udata)
    data = sock.recv(16384)
    udata = data.decode("utf-8")
    print("Data: " + udata)
