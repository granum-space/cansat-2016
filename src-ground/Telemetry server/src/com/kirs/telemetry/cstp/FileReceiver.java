/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kirs.telemetry.cstp;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Kirs
 */
public class FileReceiver {
    
    public FileReceiver(String filename, Parser parser) {
        try {
            Thread.sleep(2000);
            
            FileInputStream file = new FileInputStream(filename);
            
            byte[] bytes = new byte[100];
            
            while(file.read(bytes) != -1) {
                /*try {
                    Thread.sleep(10);
                } catch (InterruptedException ex) {
                    Logger.getLogger(FileReceiver.class.getName()).log(Level.SEVERE, null, ex);
                }*/
                parser.addBytes(bytes);
            }
            
        } catch (IOException ex) {
            System.err.println(ex);
        } catch (InterruptedException ex) {
            Logger.getLogger(FileReceiver.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
