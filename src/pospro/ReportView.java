/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pospro;

/**
 *
 * @author wow
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import java.awt.Container;
import java.io.InputStream;
import java.sql.Connection;
import java.util.HashMap;
import javax.swing.*;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.swing.JRViewer;
import pospro.db;

public class ReportView extends JFrame {

    public ReportView(String fileName) {
        this(fileName, null);
    }

    public ReportView(String fileName, HashMap para) {
        super("POS System");

        db d = new db();
        Connection con = d.mycon();

//        
//        Dbcon dba;
//        dba = new Dbcon();
//        java.sql.Connection con;
//        con = Dbcon.mycon();
//       
        try {
//            InputStream file = getClass().getResourceAsStream(fileName);
//            InputStream file = this.getClass().getClassLoader().getResourceAsStream(fileName);
//            JasperReport jr = JasperCompileManager.compileReport(System.getProperties().getProperty("java.class.path").split(";")[System.getProperties().getProperty("java.class.path").split(";").length - 1] + "src\\reports\\inidreport.jasper");
//           JasperDesign jasperDesign = JRXmlLoader.load(file);
//         JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
//            JasperPrint jasperPrint = JasperFillManager.fillReport(jr, para, con);

            JasperPrint print = JasperFillManager.fillReport(fileName, para, con);
            JRViewer viewer = new JRViewer(print);
            Container c = getContentPane();
            c.add(viewer);
        } catch (JRException jRException) {
            System.out.println(jRException);
        }
        setBounds(2, 2, 900, 700);
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);
    }

    void print() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
