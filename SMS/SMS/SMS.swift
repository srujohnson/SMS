//
//  SMS.swift
//  SMS
//
//  Created by Susan Johnson on 9/3/18.
//  Copyright © 2018 Out There Software. All rights reserved.
//


/*
  Given a string S representing the text that needs to be split and an integer K that is equal to the maximum possible message length, returns the number of SMS messages needed.
 
  For instance, given string S="SMS messages are really short" and K = 12, your function should return 3. You could split this text into proper messages as follows:
  "SMS"
  "messages are"
  "really short"
 
  If it's impossible to split text into proper SMS messages, your function should return −1.
  Assume that:
  K is an integer within the range [1..500];
  S is a non-empty string containing at most 500 characters: only letters and spaces, there are no spaces at the beginning and at the end of S; also there can't be two or more consecutive spaces in S.
*/

import Foundation

struct SMS {
    public static func solution(_ S:inout String, _ K:Int) -> Int {
        let substrings = S.split(separator: " ", maxSplits: Int.max, omittingEmptySubsequences: true)
        
        var messages = 1
        var messageLength = 0
        
        for word in substrings {
            let wordLength = word.count
            if wordLength > K { // if word is longer than message length, can't split properly
                messages = -1
                break
            }
            if messageLength > 0 { // account for the space between words
                messageLength += 1
            }
            
            if wordLength + messageLength <= K {
                // adding onto message
                messageLength = messageLength + wordLength
            } else {
                // starting a new message
                messageLength = wordLength
                messages += 1
            }
        }
        
        return messages
    }
}
