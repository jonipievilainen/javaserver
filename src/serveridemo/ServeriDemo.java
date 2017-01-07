/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package serveridemo;

import java.io.*;

import java.net.*;
import foldermanager.FolderManager;

/**
 *
 * @author Pievi
 */
public class ServeriDemo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        String clientSentence;
        String capitalizedSentence;
        ServerSocket welcomeSocket = new ServerSocket(6789);
        
        System.out.println("testiii");
        
        
        foldermanager.FolderManager tester = new foldermanager.FolderManager();
        
        /**
         * Clientti yhistää
         * ilmottaa api-key -> kysyy sisällön
         * unhash api-key -> palauttaa kansion jota kaipaa esim: abc
         * haetaan sisältö 
         * lähetetään clientille -> client tarkistaa erot -> jos ei ole -> ei tehdä mitään -> muuten
         * client yhdistää uudestaa kutsulla "lähetä kaikki data" -> api-key
         */
        
        
        tester.getCurrentFolder();
        
        tester.getFiles();
        
        
        while(true)
        {
            Socket connectionSocket = welcomeSocket.accept();
            BufferedReader inFromClient = new BufferedReader(new InputStreamReader(connectionSocket.getInputStream()));
            DataOutputStream outToClient = new DataOutputStream(connectionSocket.getOutputStream());
            clientSentence = inFromClient.readLine();
            System.out.println("Received: " + clientSentence);
            capitalizedSentence = clientSentence.toUpperCase() + '\n';
            outToClient.writeBytes(capitalizedSentence);
        }
    }
    
}
