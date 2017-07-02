/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kirs.telemetry.cstp.client;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.event.MouseWheelEvent;
import java.awt.event.MouseWheelListener;
import java.awt.geom.Point2D;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.Plot;
import org.jfree.chart.plot.XYPlot;
import org.jfree.chart.renderer.xy.XYItemRenderer;
import org.jfree.data.xy.DefaultXYDataset;
import org.json.JSONArray;
import org.json.JSONObject;
import org.jxmapviewer.JXMapViewer;
import org.jxmapviewer.OSMTileFactoryInfo;
import org.jxmapviewer.painter.Painter;
import org.jxmapviewer.painter.CompoundPainter;
import org.jxmapviewer.viewer.DefaultTileFactory;
import org.jxmapviewer.viewer.DefaultWaypoint;
import org.jxmapviewer.viewer.GeoPosition;
import org.jxmapviewer.viewer.Waypoint;
import org.jxmapviewer.viewer.WaypointPainter;

/**
 *
 * @author Kirs
 */
public class GranumParser implements JSONParser{

    GUI gui;
    
    DefaultXYDataset pressure_dataset = new DefaultXYDataset(), accelerations_dataset = new DefaultXYDataset(), temp_dataset = new DefaultXYDataset(),
            humidity_dataset = new DefaultXYDataset(), luminosity_dataset = new DefaultXYDataset(), temp_soil_dataset = new DefaultXYDataset(), soilresist_dataset = new DefaultXYDataset(),
            latitude_dataset = new DefaultXYDataset(), longtitude_dataset = new DefaultXYDataset(), height_dataset = new DefaultXYDataset();
    
    double[][] pressure_array = new double[2][], accelerationsX_array = new double[2][], accelerationsY_array = new double[2][], accelerationsZ_array = new double[2][], temp_ds_array = new double[2][], 
            temp_bmp_array = new double[2][], temp_dht_array = new double[2][], humidity_array = new double[2][], 
            luminosity1_array = new double[2][], luminosity2_array = new double[2][], luminosity3_array = new double[2][], 
            temp_soil1_array = new double[2][], temp_soil2_array = new double[2][], temp_soil3_array = new double[2][], 
            soilresist1_array = new double[2][], soilresist2_array = new double[2][], soilresist3_array = new double[2][],
            latitude_array = new double[2][], longtitude_array = new double[2][], height_array = new double[2][];
    
    ArrayList<Double> pressure_list = new ArrayList<>(), accelerationsX_list = new ArrayList<>(), accelerationsY_list = new ArrayList<>(), accelerationsZ_list = new ArrayList<>(), temp_ds_list = new ArrayList<>(), 
            temp_bmp_list = new ArrayList<>(), temp_dht_list = new ArrayList<>(), humidity_list = new ArrayList<>(), 
            luminosity1_list = new ArrayList<>(), luminosity2_list = new ArrayList<>(), luminosity3_list = new ArrayList<>(), 
            temp_soil1_list = new ArrayList<>(), temp_soil2_list = new ArrayList<>(), temp_soil3_list = new ArrayList<>(), 
            soilresist1_list = new ArrayList<>(), soilresist2_list = new ArrayList<>(), soilresist3_list = new ArrayList<>(),
            latitude_list = new ArrayList<>(), longtitude_list = new ArrayList<>(), height_list = new ArrayList<>(),
            time_fast_list = new ArrayList<>(),time_slow_list = new ArrayList<>(), time_so_slow_list = new ArrayList<>();
    
    //MapPanel map = new MapPanel();
    JXMapViewer map = new JXMapViewer();
    ArrayList<GeoPosition> waypointsPos = new ArrayList<>();
    ArrayList<DefaultWaypoint> waypoints = new ArrayList<>();
    
    
    public void addPlot(JFreeChart chart, int seriesCount) {
        for(int i = 0; i < seriesCount; i++) {
            setSeriesWidth(chart, i);
        }
        gui.addChart( new ChartPanel(chart) );
    }
    
    public void setSeriesWidth(JFreeChart chart, int seriesIndex) {
        if (chart != null) {
            BasicStroke stroke = new BasicStroke(2.0f);
            
            Plot plot = chart.getPlot();
            if (plot instanceof XYPlot) {
                XYPlot xyPlot = chart.getXYPlot();
                XYItemRenderer xyir = xyPlot.getRenderer();
                xyPlot.setBackgroundPaint(new Color(255, 255, 255));
                try {
                    xyir.setSeriesStroke(seriesIndex, stroke); //series line style
                } catch (Exception e) {
                    System.err.println("Error setting width for series '"+seriesIndex+"' of chart '"+chart+"': "+e);
                }
            } else {
                System.out.println("setSeriesWidth() unsupported plot: "+plot);
            }
        }
    }
    
    public GranumParser(GUI gui) {
        this.gui = gui;
        
        addPlot(ChartFactory.createXYLineChart("Pressure", "time", "pressure", pressure_dataset), 1);
        addPlot(ChartFactory.createXYLineChart("Temperature", "time", "temperature", temp_dataset), 3);
        addPlot(ChartFactory.createXYLineChart("Humidity", "time", "humidity", humidity_dataset), 1);
        addPlot(ChartFactory.createXYLineChart("Luminosity", "time", "luuminosity", luminosity_dataset), 3);
        addPlot(ChartFactory.createXYLineChart("Accelerations", "time", "accelerations", accelerations_dataset), 3);
        addPlot(ChartFactory.createXYLineChart("Soil temperature", "time", "temperature", temp_soil_dataset), 3);
        addPlot(ChartFactory.createXYLineChart("Soil resistance", "time", "resistance", soilresist_dataset), 3);

        /*map.setZoom(5);
        map.repaint();
        gui.addChart(map);*/
        
        DefaultTileFactory tf = new DefaultTileFactory( new OSMTileFactoryInfo() );
        tf.setThreadPoolSize(8);
        map.setTileFactory(tf);
        
        map.setZoom(15);
        map.addMouseWheelListener(new MouseWheelListener() {

            @Override
            public void mouseWheelMoved(MouseWheelEvent e) {
                if(e.getPreciseWheelRotation() > 0) map.setZoom( map.getZoom() + 1 );
                else map.setZoom( map.getZoom() - 1 );
            }
        });
        
        map.setAddressLocation( new GeoPosition(56.72666666666667, 37.716944444444444) );
        
        
        gui.addChart(map);
        
        gui.setVisible(true);
    }

    int i = 0;
    
    @Override
    public void parse(JSONObject json) {
        
        switch(json.getString("TYPE")) {
            case "FAST":
                time_fast_list.add(json.getDouble("TIME") / 1000.0f);
                
                accelerationsX_list.add(json.getDouble("ACC_X"));
                accelerationsY_list.add(json.getDouble("ACC_Y"));
                accelerationsZ_list.add(json.getDouble("ACC_Z"));
                
                accelerationsX_array[0] = doubleListToArray(time_fast_list);
                accelerationsX_array[1] = doubleListToArray(accelerationsX_list);

                accelerationsY_array[0] = doubleListToArray(time_fast_list);
                accelerationsY_array[1] = doubleListToArray(accelerationsY_list);

                accelerationsZ_array[0] = doubleListToArray(time_fast_list);
                accelerationsZ_array[1] = doubleListToArray(accelerationsZ_list);
                
                accelerations_dataset.addSeries("X", accelerationsX_array);
                accelerations_dataset.addSeries("Y", accelerationsY_array);
                accelerations_dataset.addSeries("Z", accelerationsZ_array);
                
                
                
                luminosity1_list.add(json.getJSONArray("LUMINOSITY").getJSONObject(0).getDouble("LUX"));
                luminosity2_list.add(json.getJSONArray("LUMINOSITY").getJSONObject(1).getDouble("LUX"));
                luminosity3_list.add(json.getJSONArray("LUMINOSITY").getJSONObject(2).getDouble("LUX"));
                
                luminosity1_array[0] = doubleListToArray(time_fast_list);
                luminosity1_array[1] = doubleListToArray(luminosity1_list);

                luminosity2_array[0] = doubleListToArray(time_fast_list);
                luminosity2_array[1] = doubleListToArray(luminosity2_list);

                luminosity3_array[0] = doubleListToArray(time_fast_list);
                luminosity3_array[1] = doubleListToArray(luminosity3_list);
                
                luminosity_dataset.addSeries("1", luminosity1_array);
                luminosity_dataset.addSeries("2", luminosity2_array);
                luminosity_dataset.addSeries("3", luminosity3_array);
                
                break;
                
            case "SLOW":
                time_slow_list.add(json.getDouble("TIME") / 1000.0f);
                
                
                
                pressure_list.add(json.getDouble("PRESSURE"));
                
                pressure_array[0] = doubleListToArray(time_slow_list);
                pressure_array[1] = doubleListToArray(pressure_list);
                
                pressure_dataset.addSeries("Pressure", pressure_array);
                
                
                
                temp_bmp_list.add(json.getDouble("TEMPERATURE_BMP280"));
                
                temp_bmp_array[0] = doubleListToArray(time_slow_list);
                temp_bmp_array[1] = doubleListToArray(temp_bmp_list);
                
                temp_dataset.addSeries("BMP280", temp_bmp_array);
                
                
                if(json.getDouble("LONGTITUDE") != 0) {
                    
                    GeoPosition pos = new GeoPosition(recalcCordToDecimal( json.getDouble("LATITUDE") ), recalcCordToDecimal( json.getDouble("LONGTITUDE") ) );
                    
                    map.setAddressLocation(pos);
                    waypointsPos.add(pos);
                    waypoints.add( new DefaultWaypoint(pos) );

                    repaintWaypoints();
                }
                
                
                
                soilresist1_list.add(json.getJSONArray("SOILRESIST").getJSONObject(0).getDouble("RESISTANCE"));
                soilresist2_list.add(json.getJSONArray("SOILRESIST").getJSONObject(1).getDouble("RESISTANCE"));
                soilresist3_list.add(json.getJSONArray("SOILRESIST").getJSONObject(2).getDouble("RESISTANCE"));
                
                soilresist1_array[0] = doubleListToArray(time_slow_list);
                soilresist1_array[1] = doubleListToArray(soilresist1_list);

                soilresist2_array[0] = doubleListToArray(time_slow_list);
                soilresist2_array[1] = doubleListToArray(soilresist2_list);

                soilresist3_array[0] = doubleListToArray(time_slow_list);
                soilresist3_array[1] = doubleListToArray(soilresist3_list);
                
                soilresist_dataset.addSeries("1", soilresist1_array);
                soilresist_dataset.addSeries("2", soilresist2_array);
                soilresist_dataset.addSeries("3", soilresist3_array);
                
                break;
                
            case "SOSLOW":
                time_so_slow_list.add(json.getDouble("TIME") / 1000.0f);
                
                temp_ds_list.add(json.getDouble("TEMPERATURE_DS18B20"));
                
                temp_ds_array[0] = doubleListToArray(time_so_slow_list);
                temp_ds_array[1] = doubleListToArray(temp_ds_list);
                
                temp_dataset.addSeries("DS18B20", temp_ds_array);
                
                
                
                temp_dht_list.add(json.getDouble("TEMPERATURE_DHT"));
                
                temp_dht_array[0] = doubleListToArray(time_so_slow_list);
                temp_dht_array[1] = doubleListToArray(temp_dht_list);
                
                temp_dataset.addSeries("DHT22", temp_dht_array);
                
                
                
                humidity_list.add(json.getDouble("HUMIDITY"));
                
                humidity_array[0] = doubleListToArray(time_so_slow_list);
                humidity_array[1] = doubleListToArray(humidity_list);
                
                humidity_dataset.addSeries("Humidity", humidity_array);
                
                
                
                temp_soil1_list.add(json.getJSONArray("TEMPERATURE_SOIL").getDouble(0));
                temp_soil2_list.add(json.getJSONArray("TEMPERATURE_SOIL").getDouble(1));
                temp_soil3_list.add(json.getJSONArray("TEMPERATURE_SOIL").getDouble(2));
                
                temp_soil1_array[0] = doubleListToArray(time_so_slow_list);
                temp_soil1_array[1] = doubleListToArray(temp_soil1_list);

                temp_soil2_array[0] = doubleListToArray(time_so_slow_list);
                temp_soil2_array[1] = doubleListToArray(temp_soil2_list);

                temp_soil3_array[0] = doubleListToArray(time_so_slow_list);
                temp_soil3_array[1] = doubleListToArray(temp_soil3_list);
                
                temp_soil_dataset.addSeries("1", temp_soil1_array);
                temp_soil_dataset.addSeries("2", temp_soil2_array);
                temp_soil_dataset.addSeries("3", temp_soil3_array);
                
                break;
                
            case "ACC":
                
                break;
        }
        
        
        /*
        soilresist_dataset.addSeries("1", soilresist1_array);
        soilresist_dataset.addSeries("2", soilresist2_array);
        soilresist_dataset.addSeries("3", soilresist3_array);*/
    }
    
    private double[] doubleListToArray(ArrayList<Double> list) {
        double[] retval = new double[list.size()];
        int i = 0;
        for(Double value:list) {
            retval[i] = value;
            i++;
        }
        
        return retval;
    }
    
    private double recalcCordToDecimal(double cordInMinutesSeconds) {
        int degrees = (int) (cordInMinutesSeconds / 100);
        double minutes = cordInMinutesSeconds - (degrees * 100.0d);
        
        return degrees + (minutes / 60.0d);
    }
    
    private void repaintWaypoints(){
        RoutePainter routePainter = new RoutePainter(waypointsPos);
        
        Set<Waypoint> waypointsSet = new HashSet<Waypoint>(waypoints);
        
        WaypointPainter<Waypoint> waypointPainter = new WaypointPainter<Waypoint>();
        waypointPainter.setWaypoints(waypointsSet);
        
        List<Painter<JXMapViewer>> painters = new ArrayList<Painter<JXMapViewer>>();
        painters.add(routePainter);
        painters.add(waypointPainter);

        CompoundPainter<JXMapViewer> painter = new CompoundPainter<JXMapViewer>(painters);
        map.setOverlayPainter(painter);
    }
    
    public class RoutePainter implements Painter<JXMapViewer>
{
	private final Color color = Color.RED;
	private final boolean antiAlias = true;
	
	private final List<GeoPosition> track;
	
	/**
	 * @param track the track
	 */
	public RoutePainter(List<GeoPosition> track)
	{
		// copy the list so that changes in the 
		// original list do not have an effect here
		this.track = new ArrayList<GeoPosition>(track);
	}

	@Override
	public void paint(Graphics2D g, JXMapViewer map, int w, int h)
	{
		g = (Graphics2D) g.create();

		// convert from viewport to world bitmap
		Rectangle rect = map.getViewportBounds();
		g.translate(-rect.x, -rect.y);

		if (antiAlias)
			g.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

		// do the drawing
		g.setColor(Color.BLACK);
		g.setStroke(new BasicStroke(4));

		drawRoute(g, map);

		// do the drawing again
		g.setColor(color);
		g.setStroke(new BasicStroke(2));

		drawRoute(g, map);

		g.dispose();
	}

	/**
	 * @param g the graphics object
	 * @param map the map
	 */
	private void drawRoute(Graphics2D g, JXMapViewer map)
	{
		int lastX = 0;
		int lastY = 0;
		
		boolean first = true;
		
		for (GeoPosition gp : track)
		{
			// convert geo-coordinate to world bitmap pixel
			Point2D pt = map.getTileFactory().geoToPixel(gp, map.getZoom());

			if (first)
			{
				first = false;
			}
			else
			{
				g.drawLine(lastX, lastY, (int) pt.getX(), (int) pt.getY());
			}
			
			lastX = (int) pt.getX();
			lastY = (int) pt.getY();
		}
	}
}
}
