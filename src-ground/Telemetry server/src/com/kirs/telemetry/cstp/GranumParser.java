/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kirs.telemetry.cstp;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author Kirs
 */
public class GranumParser extends Parser{
    
    private final int fastPacketLength = 45;
    private final int slowPacketLength = 62;
    private final int soslowPacketLength = 40;
    private final int accPacketLength = 311;
    private final int stmPacketLength = 32;
    
    private final int fastPacketSign = 0xCAAC;
    private final int slowPacketSign = 0xFCFC;
    private final int soslowPacketSign = 0x1AFC;
    private final int accPacketSign = 0x7BFA;
    private final int stmPacketSign = 0xF7AB;

    
    Server server;
    private enum State
    {
        STATE_IN_SEARCH, // Состояние поиска макера начала пакета
        STATE_ACCUM_FAST, // Состояния накопления пакетов
        STATE_ACCUM_SLOW,
        STATE_ACCUM_SOSLOW,
        STATE_ACCUM_ACC,
        STATE_ACCUM_STM
    };
    
    byte[] bytes = new byte[500];
    
    State _state = State.STATE_IN_SEARCH;
    private int index = 0;
    
    private boolean _isSignaturePart(byte data) { //Проверка, является ли байт частью заголовка пакета
        switch (data) { //@NOTE сюда нужно вносить все байты пакетных заголовков
            case (byte) 0xAC:
            case (byte) 0xCA:
            case (byte) 0xFC:
            case (byte) 0x1A:
            case (byte) 0x7B:
            case (byte) 0xFA:
            case (byte) 0xF7:
            case (byte) 0xAB:
                return true;
            default: 
                return false;
        }
    }
    
    public GranumParser(Server server) {
        this.server = server;
    }
    
    @Override
    public void parse(byte character) 
    {
        bytes[index] = character;
        index++;
        switch(_state) {
            case STATE_IN_SEARCH:
                ByteBuffer buffer = ByteBuffer.wrap(bytes);
                
                if(index == 2) {
                    switch ( getUShort(buffer) ) {
                        case fastPacketSign: 
                            _state = State.STATE_ACCUM_FAST;
                            break;

                        case slowPacketSign:
                            _state = State.STATE_ACCUM_SLOW;
                            break;

                        case soslowPacketSign:
                            _state = State.STATE_ACCUM_SOSLOW;
                            break;

                        case accPacketSign:
                            _state = State.STATE_ACCUM_ACC;
                            break;
                            
                        case stmPacketSign:
                            _state = State.STATE_ACCUM_STM;
                            break;

                        default:
                            index = 0;
                            break; 
                    }
                }
                
                if(! _isSignaturePart(bytes[0])) index--;
                break;
                
                
            case STATE_ACCUM_FAST:
                if(index == fastPacketLength) {
                    System.out.println("Full fast packet");
                    
                    if(checkPacket(fastPacketLength))
                        server.informClients(decodeFastPacket());
                    
                    index = 0;
                    _state = State.STATE_IN_SEARCH;
                }
                
                break;
                
            case STATE_ACCUM_SLOW:
                if(index == slowPacketLength) {
                    System.out.println("Full slow packet");
                    
                    if(checkPacket(slowPacketLength))
                        server.informClients(decodeSlowPacket());
                    
                    index = 0;
                    _state = State.STATE_IN_SEARCH;
                }
                
                break;
            
            case STATE_ACCUM_SOSLOW:
                if(index == soslowPacketLength) {
                    System.out.println("Full soslow packet");
                    
                    if(checkPacket(soslowPacketLength))
                        server.informClients(decodeSoSlowPacket());
                    
                    index = 0;
                    _state = State.STATE_IN_SEARCH;
                }
                
                break;
                
            case STATE_ACCUM_ACC:
                if(index == accPacketLength) {
                    System.out.println("Full acc packet");
                    
                    if(checkPacket(accPacketLength)) {
                        server.informClients(decodeAccPacket());
                    }
                        
                    index = 0;
                    _state = State.STATE_IN_SEARCH;
                }
                
                break;
                
            case STATE_ACCUM_STM:
                if(index == stmPacketLength) {
                    System.out.println("Full stm packet");
                    
                    if(checkPacket(stmPacketLength))
                        server.informClients(decodeStmPacket());
                        
                    index = 0;
                    _state = State.STATE_IN_SEARCH;
                }
                
                break;
        }
    }
    
    private JSONObject decodeFastPacket() {
        ByteBuffer buffer = ByteBuffer.wrap(bytes);
        buffer.order(ByteOrder.LITTLE_ENDIAN);
        
        JSONObject json = new JSONObject();
        
        buffer.getShort();
        
        json.put("TYPE", "FAST");
        
        json.put("NUMBER", getUShort(buffer));
        json.put("TICK", getUInt(buffer));
        
        json.put("MODE", buffer.get());
        System.out.println("Mode " + json.getLong("MODE"));
        
        json.put("ACC_X", buffer.getShort() * 0.004);
        json.put("ACC_Y", buffer.getShort() * 0.004);
        json.put("ACC_Z", buffer.getShort() * 0.004);
        json.put("ACC_ERR", buffer.get());
        
        JSONArray luminosity = new JSONArray();
        for(int i = 0; i < 3; i++) {
            JSONObject resist = new JSONObject();
            resist.put("V0", getUShort(buffer));
            resist.put("V1", getUShort(buffer));
            resist.put("LUX", getUShort(buffer));
            resist.put("ERR", buffer.get());
            luminosity.put(resist);
        }
        json.put("LUMINOSITY", luminosity);
        
        json.put("TIME", getUInt(buffer));
        
        return json;
    }
    
    private JSONObject decodeSlowPacket() {
        ByteBuffer buffer = ByteBuffer.wrap(bytes);
        buffer.order(ByteOrder.LITTLE_ENDIAN);
        
        JSONObject json = new JSONObject();
        
        buffer.getShort();
        
        json.put("TYPE", "SLOW");
        
        json.put("NUMBER", getUShort(buffer));
        json.put("TICK", getUInt(buffer));
        
        json.put("PRESSURE", buffer.getInt());
        json.put("TEMPERATURE_BMP280", buffer.getInt() / 100.0f);
        json.put("BMP280_ERR", buffer.get());
        
        float lat = buffer.getFloat();
        float lon = buffer.getFloat();
        float height = buffer.getFloat();
        
        if(! Float.isFinite(lat)) lat = 0;
        if(! Float.isFinite(lon)) lon = 0;
        if(! Float.isFinite(height)) height = 0;
        
        
        json.put("LATITUDE", lat);
        json.put("LONGTITUDE", lon);
        json.put("HEIGHT", height);
        json.put("GPS_HASFIX", buffer.get());
        
        JSONArray soilresist = new JSONArray();
        for(int i = 0; i < 3; i++) {
            JSONObject resist = new JSONObject();
            resist.put("ADC_LOW", getUShort(buffer));
            resist.put("ADC_HIGH", getUShort(buffer));
            resist.put("RESISTANCE", getUInt(buffer));
            soilresist.put(resist);
        }
        json.put("SOILRESIST", soilresist);
        
        json.put("TIME", getUInt(buffer));

        return json;
    }
    
    private JSONObject decodeSoSlowPacket() {
        ByteBuffer buffer = ByteBuffer.wrap(bytes);
        buffer.order(ByteOrder.LITTLE_ENDIAN);
        
        JSONObject json = new JSONObject();
        
        buffer.getShort();
        
        json.put("TYPE", "SOSLOW");
        
        json.put("NUMBER", getUShort(buffer));
        json.put("TICK", getUInt(buffer));
        
        json.put("TEMPERATURE_DS18B20", buffer.getShort() / 16.0f);
        json.put("DS18_ERR_READ", buffer.get());
        json.put("DS18_ERR_INIT", buffer.get());
        
        json.put("TEMPERATURE_DHT", buffer.getShort() / 10.0f);
        json.put("HUMIDITY", getUShort(buffer) / 10.0f);
        json.put("DHT_ERR", buffer.get());

        json.put("TEMPERATURE_SOIL", Arrays.asList(     getUInt(buffer),
                                                        getUInt(buffer),
                                                        getUInt(buffer)));
        json.put("THERMISTOR_A_ERR", buffer.get());
        json.put("THERMISTOR_B_ERR", buffer.get());
        json.put("THERMISTOR_C_ERR", buffer.get());
        
        json.put("TIME", getUInt(buffer));
        
        return json;
    }
    
    private JSONObject decodeAccPacket() {
        ByteBuffer buffer = ByteBuffer.wrap(bytes);
        buffer.order(ByteOrder.LITTLE_ENDIAN);
        
        JSONObject json = new JSONObject();
        
        buffer.getShort();
        
        json.put("TYPE", "ACC");
        
        json.put("TRY", buffer.get());
        
        int offset = getUShort(buffer);
        int size = getUShort(buffer);
        
        json.put("SIZE", size);
        
        JSONArray accelerations = new JSONArray();
        for(int i = 0; i < size; i++) {
            JSONObject acc = new JSONObject();
            acc.put("OFFSET", offset + i);
            acc.put("X", buffer.getShort());
            acc.put("Y", buffer.getShort());
            acc.put("Z", buffer.getShort());
            accelerations.put(acc);
        }
        json.put("ACCELERATIONS", accelerations);
        
        return json;
    }
    
    private JSONObject decodeStmPacket() {
        ByteBuffer buffer = ByteBuffer.wrap(bytes);
        buffer.order(ByteOrder.LITTLE_ENDIAN);
        
        JSONObject json = new JSONObject();
        
        buffer.getShort();
        
        json.put("TYPE", "STM");
        
        json.put("ACC_X", buffer.getShort());
        json.put("ACC_Y", buffer.getShort());
        json.put("ACC_Z", buffer.getShort());
        
        json.put("ACC_MAX", Math.sqrt( getUInt(buffer) ) * 0.050);
        
        json.put("ACCBUF_STATUS", buffer.get());
        json.put("ACCBUF_OFFSET", getUShort(buffer));
        
        return json;
    }
    
    private boolean checkPacket(int length) {
        ByteBuffer buffer = ByteBuffer.wrap(bytes);
        long controlSumm = 0;
        buffer.order(ByteOrder.LITTLE_ENDIAN);
        
        for(int i = 0; i < (length - 4); i++){
            controlSumm += (bytes[i] & 0xFF);
        }
        controlSumm &= 0xFFFFFFFF;
        buffer.position(length - 4);
        if(controlSumm != getUInt(buffer)) {
            System.err.println("Control summ checking error: " + length);
            System.err.println(controlSumm);
            buffer.position(length - 4);
            System.err.println(getUInt(buffer));
            return false;
        }
        
        return true;
    }
    
    private static int getUShort(ByteBuffer bb) {
        return (bb.getShort() & 0xffff);
    }
    
    private static long getUInt(ByteBuffer bb) {
        return ((long) bb.getInt() & 0xffffffffL);
    }
}
