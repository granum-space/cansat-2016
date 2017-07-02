/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kirs.telemetry.cstp;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Kirs
 */
public class Server implements Runnable{
    
    static final int MAX_TRIES = 3;
    
    private final int port;
    private static final ArrayList<Socket> clients = new ArrayList<>();
    
    public Server(int port) {
        this.port = port;
    }

    @Override
    public void run() {
        try {
            ServerSocket ss = new ServerSocket(port);
            while(true) {
                clients.add(ss.accept());
            }
        }
        catch(IOException ex) {
            System.err.println(ex);
        }
    }
    
    public void informClients(Object message) 
    {
        Thread sender = new Thread(new Runnable() 
        {
            @Override
            public void run() 
            {
                for (Socket client : clients) 
                {
                    if(!client.isConnected()) {
                        clients.remove(client);
                        try {
                            client.close();
                        } catch (IOException ex) {
                            System.err.println(ex);
                        }
                        break;
                    }
                    
                    try { client.getOutputStream().write((message.toString() + "\n").getBytes("utf-8")); }
                    catch(IOException ex) { 
                        System.err.println("Exception " + ex + "when sending to " + client); 
                        try {
                            client.close();
                        } catch (IOException ex1) {
                            Logger.getLogger(Server.class.getName()).log(Level.SEVERE, null, ex1);
                        }
                        clients.remove(client);
                        
                    }
                    
                }
            }
        });
        sender.start(); // запускать отдельный тред для КАЖДОГО сообщения - это чет перебор
        // Лучше сделать один тред, который будет крутится в while(1) и будет забирать сообщения
        // из синхронизованной очереди и затем рассылать клиентам
    }
    
}
