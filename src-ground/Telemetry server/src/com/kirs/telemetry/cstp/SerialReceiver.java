/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kirs.telemetry.cstp;


import jssc.SerialPort;
import jssc.SerialPortEvent;
import jssc.SerialPortEventListener;
import jssc.SerialPortException;


/**
 *
 * @author Kirs
 */
public class SerialReceiver implements SerialPortEventListener{
    
    private jssc.SerialPort serialPort;
    private int baudrate;
    
    public Parser parser;
    
    public SerialReceiver(String portname, int baudrate, Parser parser) throws SerialPortException {
        this.parser = parser;
        serialPort = new SerialPort(portname);
        this.baudrate = baudrate;
        initSerialPort();
    }

    private void initSerialPort()throws SerialPortException {
        serialPort.openPort();
        serialPort.setParams(   this.baudrate, 
                                jssc.SerialPort.DATABITS_8, 
                                jssc.SerialPort.STOPBITS_1, 
                                jssc.SerialPort.PARITY_NONE);
        serialPort.addEventListener(this, jssc.SerialPort.MASK_RXCHAR | jssc.SerialPort.MASK_BREAK);
    }
    
    @Override
    public void serialEvent(SerialPortEvent serialPortEvent) {
        switch(serialPortEvent.getEventType()) {
            case jssc.SerialPortEvent.RXCHAR:
                try {
                    if(serialPort.getInputBufferBytesCount() > 100) {
                        parser.addBytes(serialPort.readBytes());
                    }
                }
                catch(SerialPortException ex) {System.err.println(ex);}
                catch(NullPointerException ex) {System.err.println("NPE:" + ex + "; " + ex.getMessage());}

                break;
            case jssc.SerialPortEvent.BREAK:
                try { serialPort.closePort(); }
                catch(SerialPortException ex) { System.err.println("Exception when closing port after BREAK event"); }
                
                try { initSerialPort(); }
                catch(SerialPortException ex) { System.err.println("Exception when openin port after BREAK event");}
                
                break;
        }
    }
}