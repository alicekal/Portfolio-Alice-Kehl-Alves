setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel2.setForeground(new java.awt.Color(51, 51, 255));
        jLabel2.setText("Nome");

        jLabel3.setForeground(new java.awt.Color(51, 51, 255));
        jLabel3.setText("Cpf");

        jLabel4.setForeground(new java.awt.Color(51, 51, 255));
        jLabel4.setText("Idade");

        jLabel5.setForeground(new java.awt.Color(51, 51, 255));
        jLabel5.setText("Matricula");

        camponome.setText("jTextField2");

        campocpf.setText("jTextField3");

        campoidade.setText("jTextField4");

        campomatricula.setText("jTextField5");
        campomatricula.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                campomatriculaActionPerformed(evt);
            }
        });

        jLabel6.setForeground(new java.awt.Color(51, 51, 255));
        jLabel6.setText("Sexo");

        cauãvancoco.add(radioF);
        radioF.setText("Feminino");

        cauãvancoco.add(radioM);
        radioM.setText("Masculino");

        cauãvancoco.add(radioC);
        radioC.setText("Cauã");

        jButtonok.setForeground(new java.awt.Color(51, 204, 0));
        jButtonok.setText("ok");
        jButtonok.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonokActionPerformed(evt);
            }
        });

        jButtoncancelar.setForeground(new java.awt.Color(255, 0, 0));
        jButtoncancelar.setText("cancelar");
