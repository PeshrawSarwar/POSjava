/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pospro;

import java.awt.HeadlessException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import javax.swing.DefaultComboBoxModel;
/**
 *
 * @author $PESHA$
 */
public class stock extends javax.swing.JPanel {
    
    public static String sup_id = "0";
    /**
     * Creates new form customer
     */
    public stock() {
        initComponents();
        tb_load();
    
    }
    
       
    
   public void tb_load(){
  
  
      try {
          
          DefaultTableModel dt = (DefaultTableModel) p_table.getModel();
          dt.setRowCount(0);
          
          Statement s = db.mycon().createStatement();
          ResultSet rs = s.executeQuery("SELECT product.pid, product.product_Name ,product.Bar_code, product.price, SUM(cart.qty1) as SOLD , product.qty, product.qty - SUM(cart.qty1) from product JOIN cart ON product.product_Name = cart.product_Name group by(product.product_Name);");
          
//         Statement s2 = db.mycon().createStatement();
//         ResultSet rs2 = s2.executeQuery("SELECT SUM(qty), product_Name from cart GROUP BY(product_Name)");
//         
//         while(rs2.next()){
//               System.out.println(rs2.getString(1));
//         }
//         
          
          while (rs.next()) {              
              
              Vector v = new Vector();
              
              v.add(rs.getString(1));
              v.add(rs.getString(2));
              v.add(rs.getString(3));
              v.add(rs.getString(4));
              v.add(rs.getString(5));
              v.add(rs.getString(6));
//              v.add(rs.getString(7));
              int n1=Integer.parseInt(rs.getString(6));
              dt.addRow(v);
              if(n1 <= 0 ){
                JOptionPane.showMessageDialog(null, "This product "+rs.getString(2)+" is out of stock");
          }
          }
          
      } catch (SQLException e) {
          System.out.println(e);
      }
  
  }  

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        p_table = new javax.swing.JTable();
        p_search_table = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();

        p_table.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID", "Name", "Bar Code:", "Price", "Sold", "Qty"
            }
        ));
        p_table.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                p_tableMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(p_table);

        p_search_table.setText("0");
        p_search_table.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                p_search_tableKeyReleased(evt);
            }
        });

        jLabel8.setFont(new java.awt.Font("Dialog", 1, 14)); // NOI18N
        jLabel8.setText("Search:");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(14, 14, 14)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 989, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(12, 12, 12)
                        .addComponent(jLabel8)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(p_search_table, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(p_search_table, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel8))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 533, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(14, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 9, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
    }// </editor-fold>//GEN-END:initComponents

    private void p_tableMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_p_tableMouseClicked
        // TODO add your handling code here:
      
    }//GEN-LAST:event_p_tableMouseClicked

    private void p_search_tableKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_p_search_tableKeyReleased
        // TODO add your handling code here:
        
       
            
            
            
            
            
 
    }//GEN-LAST:event_p_search_tableKeyReleased


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField p_search_table;
    private javax.swing.JTable p_table;
    // End of variables declaration//GEN-END:variables
}
