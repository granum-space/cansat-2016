/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kirs.telemetry.cstp;

/**
 *
 * @author Kirs
 */
abstract public class Parser {
    
    
    public void addBytes(byte[] bytes) 
    {
        for(int i = 0; i < bytes.length; i++)
        {
            parse( bytes[i] );
        }
    }
    
    abstract public void parse(byte character);
}
