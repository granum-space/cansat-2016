/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kirs.telemetry.cstp.client;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDateTime;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author Kirs
 */
public class GranumParserCSV implements JSONParser{
    
    FileWriter fastWriter, slowWriter, soslowWriter, accWriter, stmWriter;
    
    long lastTime = 0;
    
    public GranumParserCSV() {
        
        LocalDateTime startTime = LocalDateTime.now();
        startTime = startTime.minusNanos(startTime.getNano());
        File logsFolder = new File(startTime.toString().replace(":", "-"));
        logsFolder.mkdir();
        
        try {
            File file = new File("./" + startTime.toString().replace(":", "-") + "/GRANUM_telemetry_fast.csv");
            if(!file.exists()) file.createNewFile();
            fastWriter = new FileWriter(file, false);
        } catch (IOException ex) {
            System.err.println(ex);
        }
        
        try {
            File file = new File("./" + startTime.toString().replace(":", "-") + "/GRANUM_telemetry_slow.csv");
            if(!file.exists()) file.createNewFile();
            slowWriter = new FileWriter(file, false);
        } catch (IOException ex) {
            System.err.println(ex);
        }
        
        try {
            File file = new File("./" + startTime.toString().replace(":", "-") + "/GRANUM_telemetry_soslow.csv");
            if(!file.exists()) file.createNewFile();
            soslowWriter = new FileWriter(file, false);
        } catch (IOException ex) {
            System.err.println(ex);
        }
        
        try {
            File file = new File("./" + startTime.toString().replace(":", "-") + "/GRANUM_telemetry_acc.csv");
            if(!file.exists()) file.createNewFile();
            accWriter = new FileWriter(file, false);
        } catch (IOException ex) {
            System.err.println(ex);
        }
        
        try {
            File file = new File("./" + startTime.toString().replace(":", "-") + "/GRANUM_telemetry_stm.csv");
            if(!file.exists()) file.createNewFile();
            stmWriter = new FileWriter(file, false);
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
                lastTime = json.getLong("TIME");
                
                lineFast += "," + json.getLong("MODE");

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
                lastTime = json.getLong("TIME");

                lineSlow += "," + json.getDouble("PRESSURE");
                lineSlow += "," + json.getDouble("TEMPERATURE_BMP280");
                lineSlow += "," + json.getLong("BMP280_ERR");

                lineSlow += "," + 44300 * (1 - Math.pow(json.getDouble("PRESSURE") / 101300.0d, 0.19029495718363465d) );
                
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
                lastTime = json.getLong("TIME");

                lineSoSlow += "," + json.getDouble("TEMPERATURE_DS18B20");
                lineSoSlow += "," + json.getLong("DS18_ERR_READ");
                lineSoSlow += "," + json.getLong("DS18_ERR_INIT");

                lineSoSlow += "," + json.getDouble("TEMPERATURE_DHT");
                lineSoSlow += "," + json.getDouble("HUMIDITY");
                lineSoSlow += "," + json.getLong("DHT_ERR");

                JSONArray temperature_soil = json.getJSONArray("TEMPERATURE_SOIL");
                for(int i = 0; i < 3; i++) {
                    double r = 100000.0 / (temperature_soil.getLong(i) * 5.0 / 1024.0) * (5.0 - temperature_soil.getLong(i) * 5.0 / 1024.0);
                    
                    /*Double temp = r / 100000.0d;
                    temp = Math.log(temp);
                    temp /= 3950;
                    temp += 1.0 / (25.0 + 273.15);
                    temp = 1 / temp;
                    temp -= 273.15;*/
                    
                    Double r_inf = 100000.0d * Math.pow(Math.E, -3950.0d / 298.15);
                    
                    Double temp = (3950.0d / Math.log(r / r_inf));
                    
                    temp -= 273.15;
                    
                    lineSoSlow += "," + temp;
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
                long try_num = json.getLong("TRY");
                long size = json.getLong("SIZE");
               
                JSONArray accelerations = json.getJSONArray("ACCELERATIONS");
                
                for(int i = 0; i < size; i++) {
                    String lineAcc = String.valueOf(try_num);
                    lineAcc += "," + accelerations.getJSONObject(i).getLong("OFFSET");
                    lineAcc += "," + ( accelerations.getJSONObject(i).getDouble("X") * 0.05);
                    lineAcc += "," + ( accelerations.getJSONObject(i).getDouble("Y") * 0.05);
                    lineAcc += "," + ( accelerations.getJSONObject(i).getDouble("Z") * 0.05);
                    
                    try {
                        accWriter.write(lineAcc + "\r\n");
                        accWriter.flush();
                    } catch (IOException ex) {
                        System.err.println(ex);
                    }
                }
                
                break;
                
            case "STM":
                
                String lineStm = String.valueOf(lastTime);
                lineStm += "," + json.getLong("ACC_X") * 0.05;
                lineStm += "," + json.getLong("ACC_Y") * 0.05;
                lineStm += "," + json.getLong("ACC_Z") * 0.05;
                lineStm += "," + json.getDouble("ACC_MAX");
                
                try {
                    stmWriter.write(lineStm + "\r\n");
                    stmWriter.flush();
                } catch (IOException ex) {
                    System.err.println(ex);
                }
                
                
                break;
           
       }
    }
}
