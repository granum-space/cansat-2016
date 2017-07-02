/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kirs.telemetry.cstp;

import java.util.logging.Level;
import java.util.logging.Logger;
import jssc.SerialPortException;

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
    static Object receiver;
    static int baudrate = 9600, networkPort = 37577;
    static String serialPort = "COM3";
    static String filename = null;
    
    public static void main(String[] args) {
        parseArgs(args);
        while(true)
        {
            try {
                server = new Server(networkPort);
                serverThread = new Thread(server);
                serverThread.start();
                if(filename == null)
                    receiver = new SerialReceiver(serialPort, baudrate, new GranumParser(server));
                
                else 
                    receiver = new FileReceiver(filename, new GranumParser(server));
                break;
            } catch (SerialPortException ex) {
                Logger.getLogger(TelemetryServer.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
    public static void parseArgs(String[] args) {
        for(int i = 0; i < (args.length / 2); i++) {
            switch (args[ i * 2 ]) {
                case "-b":
                    baudrate = Integer.parseInt( args[ (i * 2) + 1 ] );
                    break;
                case "-p":
                    networkPort = Integer.parseInt( args[ (i * 2) + 1 ] );
                    break;
                case "-s":
                    serialPort = args[ (i * 2) + 1 ];
                    break;
                case "-f":
                    filename = args[ (i * 2) + 1 ];
                    break;
                default:
                    System.err.println("Wrong argument: " + args[ i * 2 ]);
                    System.exit(2);
            }
        }
    }
}
