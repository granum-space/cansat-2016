/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kirs.telemetry.cstp.client;

import java.awt.Dimension;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.xy.DefaultXYDataset;
import org.json.JSONArray;
import org.json.JSONObject;



/**
 *
 * @author Kirs
 */
public class TelemetryViewer {

    double[] examplearray;
    
    static GUI gui;
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws UnknownHostException {
        gui = new GUI(4);
        
        Thread gatherThread = new Thread(new DataGather(InetAddress.getByName("127.0.0.1"), 37577, new GranumParser(gui)));
        gatherThread.start();
        
        //test();
    }
    
    private static void test() {
        DefaultPieDataset data = new DefaultPieDataset();
        data.setValue("aaa", 27.1);
        data.setValue("bbb", 42);
        data.setValue("ccc", 49.5);
        PiePlot plot = new PiePlot(data);
        JFreeChart chart = ChartFactory.createPieChart("DATA", data);
        gui.addChart(new ChartPanel(chart));
        
        DefaultXYDataset dataXY = new DefaultXYDataset();
        double[][] values = new double[2][];
        values[0] = new double[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14};
        values[1] = new double[15];
        for(int i = 0; i < 15; i++)
        {
            values[1][i] = Math.random();
        }
        dataXY.addSeries("DATAXY", values);
        JFreeChart xychart = ChartFactory.createXYAreaChart("Title", "x", "y", dataXY);
        try {
        for(int i = 0; i < 10; i++) {
            Thread.sleep(1000);
            gui.addChart(new ChartPanel(xychart));
        }
        } catch (InterruptedException ex) {
            Logger.getLogger(GUI.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
