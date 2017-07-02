/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kirs.telemetry.cstp.client;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.Socket;
import org.json.JSONObject;

/**
 *
 * @author Kirs
 */
public class DataGather implements Runnable{

    InetAddress sourceIP;
    int sourcePort;
    Socket dataSocket;
    BufferedReader socketReader;
    JSONParser parser;
    
    public DataGather(InetAddress ipaddr, int port, JSONParser parser) {
        sourceIP = ipaddr;
        sourcePort = port;
        this.parser = parser;
    }

    @Override
    public void run() {
        while(true) {
            try {
                dataSocket = new Socket(sourceIP, sourcePort);
                socketReader = new BufferedReader( new InputStreamReader( dataSocket.getInputStream() ) );
                break;
            } catch (IOException ex) {
                System.err.println("Error when connecting to server: " + ex);
            }
        }
        
        while(true) {
            try {
                String tmp = socketReader.readLine();
                System.out.println(tmp);
                JSONObject lastJson = new JSONObject( tmp );
                parser.parse(lastJson);
            } catch (IOException ex) {
                System.err.println("Error when fetching data from server: " + ex);
            }
        }
    }
}