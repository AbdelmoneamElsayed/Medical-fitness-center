/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
/**
 *
 * @author user
 */
public class Login extends javax.swing.JFrame {

    /**
     * Creates new form Login
     */
    public Login() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel5 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        id_ = new javax.swing.JTextField();
        password_ = new javax.swing.JPasswordField();
        register = new javax.swing.JButton();
        jLabel4 = new javax.swing.JLabel();
        login = new javax.swing.JButton();
        jLabel6 = new javax.swing.JLabel();
        username_ = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(255, 255, 255));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Times New Roman", 1, 48)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 51, 51));
        jLabel1.setText("User Login");
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(270, 20, 280, -1));
        getContentPane().add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(690, 50, -1, -1));

        jLabel2.setFont(new java.awt.Font("Times New Roman", 1, 20)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(51, 51, 255));
        jLabel2.setText("Password:");
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 190, 170, 50));

        jLabel3.setFont(new java.awt.Font("Times New Roman", 1, 20)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(51, 51, 255));
        jLabel3.setText("Login ID:");
        getContentPane().add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 100, 170, 50));

        id_.setToolTipText("");
        id_.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                id_ActionPerformed(evt);
            }
        });
        getContentPane().add(id_, new org.netbeans.lib.awtextra.AbsoluteConstraints(220, 110, 350, 30));

        password_.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                password_ActionPerformed(evt);
            }
        });
        getContentPane().add(password_, new org.netbeans.lib.awtextra.AbsoluteConstraints(220, 200, 350, 30));

        register.setBackground(new java.awt.Color(255, 102, 102));
        register.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        register.setForeground(new java.awt.Color(255, 255, 255));
        register.setText("Register");
        register.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                registerActionPerformed(evt);
            }
        });
        getContentPane().add(register, new org.netbeans.lib.awtextra.AbsoluteConstraints(470, 320, 100, 30));

        jLabel4.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel4.setText("Not Registered?");
        getContentPane().add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(140, 320, -1, 30));

        login.setBackground(new java.awt.Color(255, 102, 102));
        login.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        login.setForeground(new java.awt.Color(255, 255, 255));
        login.setText("Log in");
        login.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                loginActionPerformed(evt);
            }
        });
        getContentPane().add(login, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 270, 100, 30));

        jLabel6.setFont(new java.awt.Font("Times New Roman", 1, 20)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(51, 51, 255));
        jLabel6.setText("User name:");
        getContentPane().add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 100, 170, 130));

        username_.setToolTipText("");
        username_.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                username_ActionPerformed(evt);
            }
        });
        getContentPane().add(username_, new org.netbeans.lib.awtextra.AbsoluteConstraints(220, 150, 350, 30));

        jLabel7.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Useer login.jpeg"))); // NOI18N
        getContentPane().add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 4, 710, 360));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void id_ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_id_ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_id_ActionPerformed

    private void password_ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_password_ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_password_ActionPerformed

    private void registerActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_registerActionPerformed
        this.setVisible(false);
        Registration g = new Registration();
        g.setVisible(true);
        
                                            
    }//GEN-LAST:event_registerActionPerformed

    private void loginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_loginActionPerformed
       int id =Integer.parseInt(id_.getText());
        String username = username_.getText();
        String password =new String(password_.getPassword());
        
        
        try {
             boolean flag=false;
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/my_project?autoReconnect=true&useSSL=false", "root", "root123");
            Statement stmt = con.createStatement();
            String query="select User_id, User_Name, User_mobile from my_project.admin";
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                int ID_=rs.getInt("User_id");
                String user_name = rs.getString("User_Name");
                String pass_ = rs.getString("User_mobile");
                if(username.equals(user_name) && password.equals(pass_))
                {
                    flag=true;
                    break;
                }

            }
            if(flag)
            {
                manager_screen r =new manager_screen();
                r.setVisible(true);
            }
            else
            {
                JOptionPane.showMessageDialog(this , "Not found ");
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
         
    }//GEN-LAST:event_loginActionPerformed

    private void username_ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_username_ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_username_ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Login().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField id_;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JButton login;
    private javax.swing.JPasswordField password_;
    private javax.swing.JButton register;
    private javax.swing.JTextField username_;
    // End of variables declaration//GEN-END:variables
}
