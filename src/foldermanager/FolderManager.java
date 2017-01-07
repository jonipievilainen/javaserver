/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package foldermanager;

import java.util.*;

/**
 *
 * @author Pievi
 */
public class FolderManager {
    public String getCurrentFolder() {
        return System.getProperty("user.dir");
    }
    
    public void getFiles() {
        getFiles(getCurrentFolder());
    }
    public String getFiles(String path) {
        
        return "jess";
    }
            
    
}
