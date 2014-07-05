package sistem.tampilan;

import java.sql.*;
import javax.swing.table.DefaultTableModel;

public class DaftarObjekWisata extends javax.swing.JFrame {

    Connection cn = null;
    ResultSet rswisata = null;
    DefaultTableModel tabModel;

    public DaftarObjekWisata() {
        initComponents();
        konek();
    }

    void konek() {
        try {
            //aktif driver
            Class.forName("com.mysql.jdbc.Driver");
            //konek database
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pariwisata", "root", "");
            Object[] judul_kolom = {"Id Wisata", "Nama Wisata", "Lokasi", "Id Daerah", "Deskripsi", "Kode Kategori"};
            tabModel = new DefaultTableModel(null, judul_kolom);
            tabel_wisata.setModel(tabModel);
            tampilData();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void tampilData() {
        try {
            Statement stm; //membuat statemen stm
            stm = cn.createStatement();
            tabModel.getDataVector().removeAllElements();
            rswisata = stm.executeQuery("select * from objek_wisata");//mengambil data karyawan
            while (rswisata.next()) {
                Object[] data = {rswisata.getString("id_wisata"),
                    rswisata.getString("nama_wisata"),
                    rswisata.getString("Lokasi"),
                    rswisata.getString("id_daerah"),
                    rswisata.getString("deskripsi"),
                    rswisata.getString("kode_kategori")
                };
                tabModel.addRow(data);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void kosongkanform() {
        id_wisata.setText("");
        nama_wisata.setText("");
        lokasi.setText("");
        id_daerah.setText("");
        deskripsi.setText("");
        kode_kategori.setText("");
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jButtonCari = new javax.swing.JButton();
        jLabel6 = new javax.swing.JLabel();
        jButtonHapus = new javax.swing.JButton();
        id_wisata = new javax.swing.JTextField();
        jButtonUpdate = new javax.swing.JButton();
        lokasi = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        nama_wisata = new javax.swing.JTextField();
        jTextFieldCari = new javax.swing.JTextField();
        jButtonSimpan = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tabel_wisata = new javax.swing.JTable();
        jLabel7 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jButtonMnUtm = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        kode_kategori = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        id_daerah = new javax.swing.JTextField();
        jScrollPane2 = new javax.swing.JScrollPane();
        deskripsi = new javax.swing.JTextArea();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jButtonCari.setText("Cari");
        jButtonCari.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCariActionPerformed(evt);
            }
        });

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 14));
        jLabel6.setText("Daftar Objek Wisata");

        jButtonHapus.setText("Hapus");
        jButtonHapus.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonHapusActionPerformed(evt);
            }
        });

        id_wisata.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                id_wisataKeyPressed(evt);
            }
        });

        jButtonUpdate.setText("Update");
        jButtonUpdate.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonUpdateActionPerformed(evt);
            }
        });

        jLabel4.setText("Deskripsi");

        jLabel3.setText("Lokasi");

        jLabel2.setText("Nama Wisata");

        nama_wisata.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nama_wisataActionPerformed(evt);
            }
        });

        jButtonSimpan.setText("Simpan");
        jButtonSimpan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSimpanActionPerformed(evt);
            }
        });

        tabel_wisata.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "Id Wisata", "Nama Wisata", "Lokasi", "Id Daerah", "Deskripsi", "Kode Kategori"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                true, true, false, true, true, true
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tabel_wisata.setColumnSelectionAllowed(true);
        tabel_wisata.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tabel_wisataMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tabel_wisata);
        tabel_wisata.getColumnModel().getSelectionModel().setSelectionMode(javax.swing.ListSelectionModel.SINGLE_INTERVAL_SELECTION);

        jLabel7.setText("Cari Berdasarkan Nama");

        jLabel5.setText("Id Wisata");

        jButtonMnUtm.setText("Menu Utama");
        jButtonMnUtm.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonMnUtmActionPerformed(evt);
            }
        });

        jLabel1.setText("Kode Kategori");

        jLabel8.setText("Id Daerah");

        deskripsi.setColumns(20);
        deskripsi.setRows(5);
        jScrollPane2.setViewportView(deskripsi);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                            .addComponent(jLabel7)
                            .addContainerGap())
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jButtonCari)
                                .addContainerGap())
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(jTextFieldCari, javax.swing.GroupLayout.PREFERRED_SIZE, 527, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGap(122, 122, 122)
                                    .addComponent(jButtonMnUtm)
                                    .addContainerGap())
                                .addGroup(layout.createSequentialGroup()
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addGroup(layout.createSequentialGroup()
                                            .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 196, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED))
                                        .addGroup(layout.createSequentialGroup()
                                            .addComponent(jLabel2)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED))
                                        .addGroup(layout.createSequentialGroup()
                                            .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, 206, Short.MAX_VALUE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED))
                                        .addGroup(layout.createSequentialGroup()
                                            .addComponent(jLabel8)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED))
                                        .addGroup(layout.createSequentialGroup()
                                            .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, 206, Short.MAX_VALUE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)))
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                        .addComponent(lokasi, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 569, Short.MAX_VALUE)
                                        .addComponent(id_daerah, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 569, Short.MAX_VALUE)
                                        .addComponent(nama_wisata, javax.swing.GroupLayout.DEFAULT_SIZE, 569, Short.MAX_VALUE)
                                        .addComponent(id_wisata, javax.swing.GroupLayout.DEFAULT_SIZE, 569, Short.MAX_VALUE)
                                        .addComponent(jScrollPane2, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 569, Short.MAX_VALUE)
                                        .addComponent(kode_kategori, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 569, Short.MAX_VALUE))
                                    .addGap(103, 103, 103)))))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jButtonSimpan)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jButtonHapus)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(jButtonUpdate))
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 165, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 773, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addContainerGap())))
            .addGroup(layout.createSequentialGroup()
                .addGap(344, 344, 344)
                .addComponent(jLabel6)
                .addContainerGap(421, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(4, 4, 4)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(8, 8, 8)
                        .addComponent(id_wisata, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jLabel5))
                .addGap(14, 14, 14)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(nama_wisata, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lokasi, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(id_daerah, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel8))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel4)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1)
                    .addComponent(kode_kategori, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(8, 8, 8)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButtonUpdate)
                    .addComponent(jButtonHapus)
                    .addComponent(jButtonSimpan))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 131, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabel7)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButtonCari)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jTextFieldCari, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButtonMnUtm))
                .addContainerGap(26, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

private void jButtonCariActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCariActionPerformed
    try {
        Statement stm = cn.createStatement();
        tabModel.getDataVector().removeAllElements();
        rswisata = stm.executeQuery("select * from objek_wisata where nama_wisata like '%" + jTextFieldCari.getText() + "%'");
        while (rswisata.next()) {
            Object[] data = {rswisata.getString("id_wisata"),
                rswisata.getString("nama_wisata"),
                rswisata.getString("Lokasi"),
                rswisata.getString("id_daerah"),
                rswisata.getString("deskripsi"),
                rswisata.getString("kode_kategori")
            };
            tabModel.addRow(data);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
}//GEN-LAST:event_jButtonCariActionPerformed

private void jButtonHapusActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonHapusActionPerformed
    try {
        Statement stm = cn.createStatement();
        stm.executeUpdate("delete from objek_wisata where id_wisata='"
                + tabModel.getValueAt(tabel_wisata.getSelectedRow(), 0) + "'");
        tampilData();
    } catch (Exception e) {
        e.printStackTrace();
    }
}//GEN-LAST:event_jButtonHapusActionPerformed

private void id_wisataKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_id_wisataKeyPressed
// TODO add your handling code here:
}//GEN-LAST:event_id_wisataKeyPressed

private void jButtonUpdateActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonUpdateActionPerformed
    try {
        Statement stm = cn.createStatement();
        stm.executeUpdate("update objek_wisata set id_wisata='" + id_wisata.getText() + "',"
                + "nama_wisata='" + nama_wisata.getText() + "',"
                + "Lokasi='" + lokasi.getText() + "',"
                + "id_daerah='" + id_daerah.getText() + "',"
                + "deskripsi='" + deskripsi.getText() + "',"
                + "kode_kategori='" + kode_kategori.getText() + "'where id_wisata='"
                + tabModel.getValueAt(tabel_wisata.getSelectedRow(), 0) + "'");
        tampilData();
        kosongkanform();
    } catch (Exception e) {
        e.printStackTrace();
    }
}//GEN-LAST:event_jButtonUpdateActionPerformed

private void jButtonSimpanActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSimpanActionPerformed
    try {
        Statement stm = cn.createStatement();
        stm.executeUpdate("insert into objek_wisata set id_wisata='" + id_wisata.getText() + "',"
                + "nama='" + nama_wisata.getText() + "',"
                + "Lokasi='" + lokasi.getText() + "',"
                + "id_daerah='" + id_daerah.getText() + "',"
                + "deskripsi='" + deskripsi.getText() + "',"
                + "kode_kategori='" + kode_kategori.getText() + "");

        tampilData();
        kosongkanform();
    } catch (Exception e) {
        e.printStackTrace();
    }
}//GEN-LAST:event_jButtonSimpanActionPerformed

private void tabel_wisataMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tabel_wisataMouseClicked
    id_wisata.setText(tabModel.getValueAt(tabel_wisata.getSelectedRow(), 0) + "");
    nama_wisata.setText(tabModel.getValueAt(tabel_wisata.getSelectedRow(), 1) + "");
    lokasi.setText(tabModel.getValueAt(tabel_wisata.getSelectedRow(), 2) + "");
    id_daerah.setText(tabModel.getValueAt(tabel_wisata.getSelectedRow(), 3) + "");
    deskripsi.setText(tabModel.getValueAt(tabel_wisata.getSelectedRow(), 4) + "");
    kode_kategori.setText(tabModel.getValueAt(tabel_wisata.getSelectedRow(), 5) + "");
}//GEN-LAST:event_tabel_wisataMouseClicked

    private void jButtonMnUtmActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonMnUtmActionPerformed
        new MenuUtama().show();
        this.dispose();     }//GEN-LAST:event_jButtonMnUtmActionPerformed

    private void nama_wisataActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_nama_wisataActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_nama_wisataActionPerformed

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
                new DaftarObjekWisata().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextArea deskripsi;
    private javax.swing.JTextField id_daerah;
    private javax.swing.JTextField id_wisata;
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
    private javax.swing.JLabel jLabel8;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTextField jTextFieldCari;
    private javax.swing.JTextField kode_kategori;
    private javax.swing.JTextField lokasi;
    private javax.swing.JTextField nama_wisata;
    private javax.swing.JTable tabel_wisata;
    // End of variables declaration//GEN-END:variables
}
