/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kirs.telemetry.cstp;

import java.io.FileInputStream;
import java.io.IOException;

/**
 *
 * @author Kirs
 */
public class FileReceiver {
    
    public FileReceiver(String filename, Parser parser) {
        try {
            FileInputStream file = new FileInputStream(filename);
            
            byte[] bytes = new byte[500];
            
            while(file.read(bytes) != -1) {
                    parser.addBytes(bytes);
            }
            
        } catch (IOException ex) {
            System.err.println(ex);
        }
    }
}
