package com.pratyush.jobreco;


import java.util.HashSet;
import java.util.Set;

public class StringSimilarity {
   

 
    public  double calculateJaccardSimilarity(String str1, String str2) {
    	
        Set<String> set1 = tokenizeString(str1);
        Set<String> set2 = tokenizeString(str2);

        // Calculate the intersection and union of the sets
        Set<String> intersection = new HashSet<>(set1);
        intersection.retainAll(set2);

        Set<String> union = new HashSet<>(set1);
        union.addAll(set2);

        
        // Calculate the Jaccard similarity
        double similarity = (double) intersection.size() / union.size();

        return similarity;
    }

    public static Set<String> tokenizeString(String str) {
        String[] words = str.toLowerCase().split("\\s+");
        Set<String> wordSet = new HashSet<>();
        for (String word : words) {
            wordSet.add(word);
        }
        return wordSet;
    }
}
