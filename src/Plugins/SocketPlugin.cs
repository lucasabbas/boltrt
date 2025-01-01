using System;
using System.Net.Sockets;
using System.Text;
using Bolt.Scripting;
using MoonSharp.Interpreter;

namespace Bolt.Plugins
{

    public class SocketPlugin : Plugin
    {
        public override void Init()
        {
            Enviroment.Script.Globals["socket"] = DynValue.NewTable(Enviroment.Script);

            var socketTable = Enviroment.Script.Globals.Get("socket").Table;

            socketTable["tcp"] = DynValue.NewCallback(CreateTcpSocket);
        }

        private static DynValue CreateTcpSocket(ScriptExecutionContext context, CallbackArguments args)
        {
            var tcpSocket = new TcpSocketWrapper();
            return UserData.Create(tcpSocket);
        }
    }
}

[MoonSharpUserData]
public class TcpSocketWrapper
{
    private TcpClient _client;
    private NetworkStream _stream;

    public TcpSocketWrapper()
    {
        _client = new TcpClient();
    }

    public void Connect(string host, int port)
    {
        _client.Connect(host, port);
        _stream = _client.GetStream();
    }

    public void Send(string data)
    {
        if (_stream == null) throw new InvalidOperationException("Not connected");
        byte[] bytes = Encoding.UTF8.GetBytes(data);
        _stream.Write(bytes, 0, bytes.Length);
    }

    public string Receive(int bufferSize)
    {
        if (_stream == null) throw new InvalidOperationException("Not connected");
        byte[] buffer = new byte[bufferSize];
        int bytesRead = _stream.Read(buffer, 0, buffer.Length);
        return Encoding.UTF8.GetString(buffer, 0, bytesRead);
    }

    public void Close()
    {
        _stream?.Close();
        _client?.Close();
    }
}