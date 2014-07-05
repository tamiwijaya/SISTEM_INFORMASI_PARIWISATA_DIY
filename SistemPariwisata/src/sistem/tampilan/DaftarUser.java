package sistem.tampilan;

import java.awt.Frame;
import java.sql.*;
import javax.swing.table.DefaultTableModel;

public class DaftarUser extends javax.swing.JFrame {

    Connection cn = null;
    ResultSet rsuser = null;
    DefaultTableModel tabModel;

    public DaftarUser() {
        initComponents();
        konek();
        tampilData();

    }

    void konek() {
        try {
            //aktif driver
            Class.forName("com.mysql.jdbc.Driver");
            //konek database
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pariwisata", "root", "");
            Object[] judul_kolom = {"Id User", "Nama Lengkap", "Asal", "Alamat", "Telepon"};
            tabModel = new DefaultTableModel(null, judul_kolom);
            tabel_user.setModel(tabModel);
            //       tampilData();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void tampilData() {
        try {
            Statement stm; //buat stm
            stm = cn.createStatement();
            tabModel.getDataVector().removeAllElements();
            rsuser = stm.executeQuery("select * from data_user");//mengambil data barang
            while (rsuser.next()) {
                Object[] data = {rsuser.getString("id_user"),
                    rsuser.getString("Nama_lengkap"),
                    rsuser.getString("Asal"),
                    rsuser.getString("alamat"),
                    rsuser.getString("telepon")
                };
                tabModel.addRow(data);
            }
        } catch (Exception e) {
            e.printStackTrace();

        }
    }

    void tblKeForm() {
        id_user.setText(tabModel.getValueAt(tabel_user.getSelectedRow(), 0) + "");
        nama_lengkap.setText(tabModel.getValueAt(tabel_user.getSelectedRow(), 1) + "");
        asal.setText(tabModel.getValueAt(tabel_user.getSelectedRow(), 2) + "");
        alamat.setText(tabModel.getValueAt(tabel_user.getSelectedRow(), 3) + "");
        telp.setText(tabModel.getValueAt(tabel_user.getSelectedRow(), 4) + "");
    }

    void kosongkanForm() {
        id_user.setText("");
        nama_lengkap.setText("");
        asal.setText("");
        alamat.setText("");
        telp.setText("");
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        filler1 = new javax.swing.Box.Filler(new java.awt.Dimension(0, 0), new java.awt.Dimension(0, 0), new java.awt.Dimension(32767, 32767));
        jButtonSimpan = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jButtonHapus = new javax.swing.JButton();
        jButtonUpdate = new javax.swing.JButton();
        jButtonCari = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tabel_user = new javax.swing.JTable();
        jLabel6 = new javax.swing.JLabel();
        id_user = new javax.swing.JTextField();
        asal = new javax.swing.JTextField();
        alamat = new javax.swing.JTextField();
        telp = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        nama_lengkap = new javax.swing.JTextField();
        jTextFieldCari = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        jButtonMnUtm = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jButtonSimpan.setText("Simpan");
        jButtonSimpan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSimpanActionPerformed(evt);
            }
        });

        jLabel1.setText("Id User");

        jLabel2.setText("Nama lengkap");

        jLabel4.setText("Alamat");

        jLabel5.setText("Telepon");

        jButtonHapus.setText("Hapus");
        jButtonHapus.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonHapusActionPerformed(evt);
            }
        });

        jButtonUpdate.setText("Update");
        jButtonUpdate.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonUpdateActionPerformed(evt);
            }
        });

        jButtonCari.setText("Cari");
        jButtonCari.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCariActionPerformed(evt);
            }
        });

        tabel_user.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null}
            },
            new String [] {
                "id user", "Nama lengkap", "Asal", "Alamat", "Telepon"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Integer.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        tabel_user.setColumnSelectionAllowed(true);
        tabel_user.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tabel_userMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tabel_user);
        tabel_user.getColumnModel().getSelectionModel().setSelectionMode(javax.swing.ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 14));
        jLabel6.setText("Data User");

        id_user.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                id_userKeyPressed(evt);
            }
        });

        jLabel3.setText("Asal");

        jTextFieldCari.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldCariActionPerformed(evt);
            }
        });

        jLabel7.setText("Cari Berdasarkan Nama lengkap");

        jButtonMnUtm.setText("Menu Utama");
        jButtonMnUtm.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonMnUtmActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(21, 21, 21)
                        .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 78, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(21, 21, 21)
                        .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 78, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(20, 20, 20)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel7)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 400, Short.MAX_VALUE)
                                .addComponent(jButtonMnUtm))
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 639, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                .addComponent(jButtonCari)
                                .addGap(18, 18, 18)
                                .addComponent(jTextFieldCari, javax.swing.GroupLayout.PREFERRED_SIZE, 430, javax.swing.GroupLayout.PREFERRED_SIZE))))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(21, 21, 21)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel3)
                                    .addComponent(jLabel2)
                                    .addComponent(jLabel1))
                                .addGap(32, 32, 32)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(id_user, javax.swing.GroupLayout.DEFAULT_SIZE, 545, Short.MAX_VALUE)
                                    .addComponent(nama_lengkap, javax.swing.GroupLayout.DEFAULT_SIZE, 545, Short.MAX_VALUE)
                                    .addComponent(asal, javax.swing.GroupLayout.DEFAULT_SIZE, 545, Short.MAX_VALUE)
                                    .addComponent(alamat, javax.swing.GroupLayout.DEFAULT_SIZE, 545, Short.MAX_VALUE)
                                    .addComponent(telp, javax.swing.GroupLayout.DEFAULT_SIZE, 545, Short.MAX_VALUE)))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jButtonSimpan)
                                .addGap(18, 18, 18)
                                .addComponent(jButtonHapus)
                                .addGap(18, 18, 18)
                                .addComponent(jButtonUpdate)))))
                .addGap(164, 164, 164))
            .addGroup(layout.createSequentialGroup()
                .addGap(358, 358, 358)
                .addComponent(jLabel6)
                .addContainerGap(404, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(7, 7, 7)
                .addComponent(jLabel6)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(id_user, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(12, 12, 12)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(nama_lengkap, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(13, 13, 13)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(asal, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(17, 17, 17)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(alamat, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(9, 9, 9)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(telp, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(9, 9, 9)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButtonUpdate)
                    .addComponent(jButtonHapus)
                    .addComponent(jButtonSimpan))
                .addGap(9, 9, 9)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 137, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButtonMnUtm)
                    .addComponent(jLabel7))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButtonCari)
                    .addComponent(jTextFieldCari, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(78, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

private void jButtonSimpanActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSimpanActionPerformed
    try {
        Statement stm = cn.createStatement();
        stm.executeUpdate("insert into data_user set id_user='" + id_user.getText() + "',"
                + "Nama_lengkap='" + nama_lengkap.getText() + "',"
                + "Asal='" + asal.getText() + "',"
                + "alamat='" + alamat.getText() + "',"
                + "telepon='" + telp.getText() + "'");

        kosongkanForm();
        //set Focus Kode Barang
        id_user.requestFocus();

        tampilData();
    } catch (Exception e) {
        e.printStackTrace();
    }
}//GEN-LAST:event_jButtonSimpanActionPerformed

private void jButtonHapusActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonHapusActionPerformed
    try {
        Statement stm = cn.createStatement();
        stm.executeUpdate("delete from data_user where id_user='"
                + tabModel.getValueAt(tabel_user.getSelectedRow(), 0) + "'");

        tampilData();

    } catch (Exception e) {
        e.printStackTrace();
    }
}//GEN-LAST:event_jButtonHapusActionPerformed

private void jButtonUpdateActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonUpdateActionPerformed
    try {
        Statement stm = cn.createStatement();
        stm.executeUpdate("update data_user set id_user='" + id_user.getText() + "',"
                + "Nama_lengkap='" + nama_lengkap.getText() + "',"
                + "Asal='" + asal.getText() + "',"
                + "alamat='" + alamat.getText() + "',"
                + "telepon='" + telp.getText() + "'where id_user='"
                + tabModel.getValueAt(tabel_user.getSelectedRow(), 0) + "'");
        tampilData();
        kosongkanForm();
    } catch (Exception e) {
        e.printStackTrace();
    }

}//GEN-LAST:event_jButtonUpdateActionPerformed

private void tabel_userMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tabel_userMouseClicked
    tblKeForm();

}//GEN-LAST:event_tabel_userMouseClicked

private void jButtonCariActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCariActionPerformed
    try {
        Statement stm = cn.createStatement();
        tabModel.getDataVector().removeAllElements();
        rsuser = stm.executeQuery("select * from data_user where Nama_lengkap like '%" + jTextFieldCari.getText() + "%'");
        while (rsuser.next()) {
            Object[] data = {rsuser.getString("id_user"),
                rsuser.getString("Nama_lengkap"),
                rsuser.getString("Asal"),
                rsuser.getString("alamat"),
                rsuser.getString("telepon"),};
            tabModel.addRow(data);
        }


    } catch (Exception e) {
        e.printStackTrace();
    }
}//GEN-LAST:event_jButtonCariActionPerformed

private void id_userKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_id_userKeyPressed
// TODO add your handling code here:
}//GEN-LAST:event_id_userKeyPressed

    private void jButtonMnUtmActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonMnUtmActionPerformed
        new MenuUtama().show();
        this.dispose();
    }//GEN-LAST:event_jButtonMnUtmActionPerformed

    private void jTextFieldCariActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldCariActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldCariActionPerformed

    public static void main(String args[]) {
try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(DaftarUser.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(DaftarUser.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(DaftarUser.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(DaftarUser.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

       
        java.awt.EventQueue.invokeLater(new Runnable() {


            @Override
            public void run() {
                new DaftarUser().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField alamat;
    private javax.swing.JTextField asal;
    private javax.swing.Box.Filler filler1;
    private javax.swing.JTextField id_user;
    private javax.swing.JButton jButtonCari;
    private javax.swing.JButton jButtonHapus;
    private javax.swing.JButton jButtonMnUtm;
    private javax.swing.JButton jButtonSimpan;
    private javax.swing.JButton jButtonUpdate;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextFieldCari;
    private javax.swing.JTextField nama_lengkap;
    private javax.swing.JTable tabel_user;
    private javax.swing.JTextField telp;
    // End of variables declaration//GEN-END:variables
}
