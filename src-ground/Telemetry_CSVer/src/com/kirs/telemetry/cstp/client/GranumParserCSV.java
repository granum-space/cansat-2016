/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kirs.telemetry.cstp.client;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author Kirs
 */
public class GranumParserCSV implements JSONParser{
    
    FileWriter fastWriter, slowWriter, soslowWriter, accWriter;
    
    public GranumParserCSV() {
        try {
            File file = new File("./GRANUM_telemetry_fast.csv");
            if(!file.exists()) file.createNewFile();
            fastWriter = new FileWriter(file, false);
        } catch (IOException ex) {
            System.err.println(ex);
        }
        
        try {
            File file = new File("./GRANUM_telemetry_slow.csv");
            if(!file.exists()) file.createNewFile();
            slowWriter = new FileWriter(file, false);
        } catch (IOException ex) {
            System.err.println(ex);
        }
        
        try {
            File file = new File("./GRANUM_telemetry_soslow.csv");
            if(!file.exists()) file.createNewFile();
            soslowWriter = new FileWriter(file, false);
        } catch (IOException ex) {
            System.err.println(ex);
        }
        
        try {
            File file = new File("./GRANUM_telemetry_acc.csv");
            if(!file.exists()) file.createNewFile();
            accWriter = new FileWriter(file, false);
        } catch (IOException ex) {
            System.err.println(ex);
        }
        
        System.out.println("Files inited");
    }

    
    @Override
    public void parse(JSONObject json) {
       switch (json.getString("TYPE")) {
           case "FAST":
                String lineFast = String.valueOf(json.getLong("NUMBER"));
                lineFast += "," + json.getLong("TICK");
                lineFast += "," + json.getLong("TIME");

                lineFast += "," + json.getLong("ACC_X");
                lineFast += "," + json.getLong("ACC_Y");
                lineFast += "," + json.getLong("ACC_Z");
                lineFast += "," + json.getLong("ACC_ERR");

                JSONArray luminosity = json.getJSONArray("LUMINOSITY");
                for(int i = 0; i < 3; i++) {
                    lineFast += "," + luminosity.getJSONObject(i).getLong("V0");
                    lineFast += "," + luminosity.getJSONObject(i).getLong("V1");
                    lineFast += "," + luminosity.getJSONObject(i).getLong("LUX");
                    lineFast += "," + luminosity.getJSONObject(i).getLong("ERR");
                }
               
                try {
                    fastWriter.write(lineFast + "\r\n");
                    fastWriter.flush();
                } catch (IOException ex) {
                    System.err.println(ex);
                }
                break;
               
           case "SLOW":
                String lineSlow = String.valueOf(json.getLong("NUMBER"));
                lineSlow += "," + json.getLong("TICK");
                lineSlow += "," + json.getLong("TIME");

                lineSlow += "," + json.getLong("PRESSURE");
                lineSlow += "," + json.getLong("TEMPERATURE_BMP280");
                lineSlow += "," + json.getLong("BMP280_ERR");

                lineSlow += "," + json.getDouble("LATITUDE");
                lineSlow += "," + json.getDouble("LONGTITUDE");
                lineSlow += "," + json.getDouble("HEIGHT");
                lineSlow += "," + json.getLong("GPS_HASFIX");

                JSONArray soilresist = json.getJSONArray("SOILRESIST");
                for(int i = 0; i < 3; i++) {
                    lineSlow += "," + soilresist.getJSONObject(i).getLong("ADC_LOW");
                    lineSlow += "," + soilresist.getJSONObject(i).getLong("ADC_HIGH");
                    lineSlow += "," + soilresist.getJSONObject(i).getLong("RESISTANCE");
                }
               
                try {
                    slowWriter.write(lineSlow + "\r\n");
                    slowWriter.flush();
                } catch (IOException ex) {
                    System.err.println(ex);
                }
               
               break;
               
           case "SOSLOW":
                String lineSoSlow = String.valueOf(json.getLong("NUMBER"));
                lineSoSlow += "," + json.getLong("TICK");
                lineSoSlow += "," + json.getLong("TIME");

                lineSoSlow += "," + json.getLong("TEMPERATURE_DS18B20");
                lineSoSlow += "," + json.getLong("DS18_ERR_READ");
                lineSoSlow += "," + json.getLong("DS18_ERR_INIT");

                lineSoSlow += "," + json.getLong("TEMPERATURE_DHT");
                lineSoSlow += "," + json.getLong("HUMIDITY");
                lineSoSlow += "," + json.getLong("DHT_ERR");

                JSONArray temperature_soil = json.getJSONArray("TEMPERATURE_SOIL");
                for(int i = 0; i < 3; i++) {
                    lineSoSlow += "," + temperature_soil.getLong(i);
                }
                
                lineSoSlow += "," + json.getLong("THERMISTOR_A_ERR");
                lineSoSlow += "," + json.getLong("THERMISTOR_B_ERR");
                lineSoSlow += "," + json.getLong("THERMISTOR_C_ERR");
               
                try {
                    soslowWriter.write(lineSoSlow + "\r\n");
                    soslowWriter.flush();
                } catch (IOException ex) {
                    System.err.println(ex);
                }
               
               break;
               
           case "ACC":
                long start_i = json.getLong("START_I");
                long diff = json.getLong("END_I") - json.getLong("START_I");
               
                JSONArray accelerations = json.getJSONArray("ACCELERATIONS");
                
                for(int i = 0; i < diff; i++) {
                    String lineAcc = json.getString("TRY");
                    lineAcc += "," + (start_i + i);
                    lineAcc += "," + accelerations.getJSONObject(i).getLong("X");
                    lineAcc += "," + accelerations.getJSONObject(i).getLong("Y");
                    lineAcc += "," + accelerations.getJSONObject(i).getLong("Z");
                    
                    try {
                        accWriter.write(lineAcc + "\r\n");
                        accWriter.flush();
                    } catch (IOException ex) {
                        System.err.println(ex);
                    }
                }
                
               
                break;
           
       }
    }
}
