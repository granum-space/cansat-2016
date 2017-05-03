/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kirs.telemetry.cstp;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author Kirs
 */
public class GranumParser extends Parser{
    
    private final int packetLength = 122;
    
    Server server;
    private enum State
    {
        STATE_IN_SEARCH, // Состояние поиска макера начала пакета
        STATE_FOUND_FC, // Состояние после нахождение первой части маркера
        STATE_IN_ACCUMULATION // Состояние накопления данных пакета
    };
    
    byte[] bytes = new byte[packetLength];
    
    State _state = State.STATE_IN_SEARCH;
    private int index = 0;
    
    public GranumParser(Server server) {
        this.server = server;
    }
    
    @Override
    public void parse(byte character) 
    {
        //System.out.println(Integer.toHexString(Byte.toUnsignedInt(character)));
        bytes[index] = character;
        index++;
        switch(_state) {
            case STATE_IN_SEARCH: 
                if(Byte.toUnsignedInt(character) == (int )0xFC) {
                    _state = State.STATE_FOUND_FC;
                    System.out.println("Found FC");
                }
                else index--;
                break;
            case STATE_FOUND_FC:
                if(Byte.toUnsignedInt(character) == (int )0xFC) {
                    _state = State.STATE_IN_ACCUMULATION;
                    System.out.println("Found FC 2");
                }
                else {
                    _state = State.STATE_IN_SEARCH;
                    index = 0;
                }
                break;
            case STATE_IN_ACCUMULATION:
                if(index == packetLength) {
                    System.out.println("All packet");
                    server.informClients(decodePacket());
                    index = 0;
                    _state = State.STATE_IN_SEARCH;
                }
                
                break;
        }
    }
    
    private JSONObject decodePacket() {
        ByteBuffer buffer = ByteBuffer.wrap(bytes);
        long controlSumm = 0;
        buffer.order(ByteOrder.LITTLE_ENDIAN);
        
        for(int i = 0; i < (packetLength - 4); i++){
            controlSumm += (bytes[i] & 0xFF);
        }
        controlSumm &= 0xFFFFFFFF;
        buffer.position(packetLength - 4);
        if(controlSumm != getUInt(buffer)) {
            System.out.println(controlSumm);
            buffer.position(packetLength - 4);
            System.out.println(getUInt(buffer));
            return null;
        }
        buffer.position(0);
        
        JSONObject json = new JSONObject();
        
        buffer.getShort();
        
        json.put("NUMBER", getUShort(buffer));
        json.put("PRESSURE", buffer.getInt());
        json.put("TEMPERATURE_BMP280", buffer.getInt() / 100.0f);
        json.put("TEMPERATURE_DS18", buffer.getShort() / 16.0f);
        json.put("TEMPERATURE_DHT22", buffer.getShort() / 10.0f);
        json.put("HUMIDITY", getUShort(buffer) / 10.0f);
        
        JSONArray accels = new JSONArray();
        for(int i = 0; i < 10; i++) {
            JSONObject accel = new JSONObject();
            accel.put("X", buffer.getShort() * 0.004f);
            accel.put("Y", buffer.getShort() * 0.004f);
            accel.put("Z", buffer.getShort() * 0.004f);
            accels.put(accel);
        }
        json.put("ACCELERATIONS", accels);
        
        json.put("LUMINOSITY", Arrays.asList(   getUShort(buffer),
                                                getUShort(buffer),
                                                getUShort(buffer)));
        
        json.put("TEMPERATURE_SOIL", Arrays.asList(     getUShort(buffer),
                                                        getUShort(buffer),
                                                        getUShort(buffer)));
        
        JSONArray soilresist = new JSONArray();
        for(int i = 0; i < 3; i++) {
            JSONObject resist = new JSONObject();
            resist.put("ADC", getUShort(buffer));
            resist.put("DIGIPOT", getUShort(buffer));
            soilresist.put(resist);
        }
        json.put("SOILRESIST", soilresist);
        
        json.put("LATITUDE", buffer.getFloat());
        json.put("LONGTITUDE", buffer.getFloat());
        json.put("HEIGHT", buffer.getFloat());
        json.put("TIME", getUInt(buffer));
        
        return json;
    }
    
    public static int getUShort(ByteBuffer bb) {
        return (bb.getShort() & 0xffff);
    }
    
    public static long getUInt(ByteBuffer bb) {
        return ((long) bb.getInt() & 0xffffffffL);
    }

}
