/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kirs.telemetry.cstp.client;

import java.net.InetAddress;
import java.net.UnknownHostException;



/**
 *
 * @author Kirs
 */
public class TelemetryViewer {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws UnknownHostException {
        Thread gatherThread = new Thread(new DataGather(InetAddress.getByName("127.0.0.1"), 37577, new GranumParserCSV()));
        gatherThread.start();
    }
}
