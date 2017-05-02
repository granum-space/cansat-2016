/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kirs.telemetry.cstp;

import java.awt.List;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import jssc.SerialPortException;
import org.json.JSONObject;

/**
 *
 * @author Kirs
 */
public class TelemetryServer {

    /**
     * @param args the command line arguments
     */
    static Server server;
    static Thread serverThread;
    static SerialReceiver receiver;
    static int baudrate = 9600, networkPort = 37577;
    static String serialPort = null;
    
    public static void main(String[] args) {
        parseArgs(args);
        if(serialPort == null) 
        {
            System.err.println("Error: no serial port specified");
            System.exit(1);
        }
        while(true)
        {
            try {
                server = new Server(networkPort);
                serverThread = new Thread(server);
                serverThread.start();
                receiver = new SerialReceiver(serialPort, baudrate, new GranumParser(server));
                break;
            } catch (SerialPortException ex) {
                Logger.getLogger(TelemetryServer.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        /*JSONObject packet = new JSONObject();
        int time = 0;
        
        while(true) 
        {
            
            packet.put("PRESSURE", Math.random());
            packet.put("TEMPERATURE_BMP280", Math.random());
            packet.put("TEMPERATURE_DS18", Math.random());
            packet.put("TEMPERATURE_DHT22", Math.random());
            packet.put("HUMIDITY", Math.random());
            packet.put("ACCELERATIONS", Arrays.asList(Math.random(), Math.random(), Math.random(), Math.random(), Math.random(), Math.random(), Math.random(), Math.random(), Math.random(), Math.random()));
            packet.put("LUMINOSITY", Arrays.asList(Math.random(), Math.random(), Math.random()));
            packet.put("TEMPERATURE_SOIL", Arrays.asList(Math.random(), Math.random(), Math.random()));
            packet.put("SOILRESIST", Arrays.asList(Math.random(), Math.random(), Math.random()));
            packet.put("LATITUDE", Math.random());
            packet.put("LONGTITUDE", Math.random());
            packet.put("HEIGHT", Math.random());
            packet.put("TIME", time);
            time++;
            server.informClients(packet);
            try {
                Thread.sleep(1000);
            } catch (InterruptedException ex) {
                Logger.getLogger(TelemetryServer.class.getName()).log(Level.SEVERE, null, ex);
            }
        }*/
    }
    
    public static void parseArgs(String[] args) {
        for(int i = 0; i < (args.length / 2); i++) {
            if( args[ i * 2 ].equals("-b") ) { baudrate = Integer.parseInt( args[ (i * 2) + 1 ] );}
            else if( args[ i * 2 ].equals("-p") ) { networkPort = Integer.parseInt( args[ (i * 2) + 1 ] );}
            else if( args[ i * 2 ].equals("-s") ) { serialPort = args[ (i * 2) + 1 ];}
            else {
                System.err.println("Wrong argument: " + args[ i * 2 ]);
                System.exit(2);
            }
        }
    }
}
