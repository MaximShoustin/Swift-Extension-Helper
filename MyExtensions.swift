import Foundation

extension NSData {
    func toString() -> String {
        return NSString(data: self, encoding: NSUTF8StringEncoding)!
    }
}


extension Double {
    func format(f: String) -> String {
        return NSString(format: "%\(f)f", self)
    }
    func toString() -> String {
        return String(format: "%.1f",self)
    }

    func toInt() -> Int{
        var temp:Int64 = Int64(self)
        return Int(temp)
    }
}


extension String {
    func split(splitter: String) -> Array<String> {
        let regEx = NSRegularExpression(pattern: splitter, options: NSRegularExpressionOptions(), error: nil)!
        let stop = "SomeStringThatYouDoNotExpectToOccurInSelf"
                let modifiedString = regEx.stringByReplacingMatchesInString(self, options: NSMatchingOptions(), range: NSMakeRange(0, countElements(self)), withTemplate: stop)
        
        return modifiedString.componentsSeparatedByString(stop)
    }

    
    func startWith(find: String) -> Bool {
        return self.hasPrefix(find)
    }
    
    func equals(find: String) -> Bool {
        return self == find
    }

    func contains(find: String) -> Bool{
       if let temp = self.rangeOfString(find){
          return true
       }
       return false
     }
    
    func replace(replaceStr:String, with withStr:String) -> String{
        return self.stringByReplacingOccurrencesOfString(
            replaceStr,
            withString: withStr,
            options: .allZeros, // or just nil
            range: nil)
    }

    
    func equalsIgnoreCase(find: String) -> Bool {
        return self.lowercaseString == find.lowercaseString
    }
    
    
    
    func trim() -> String {
        return self.stringByTrimmingCharactersInSet(.whitespaceAndNewlineCharacterSet())
    }
    
    
    func removeCharsFromEnd(count:Int) -> String{
        let stringLength = countElements(self)
        
        let substringIndex = (stringLength < count) ? 0 : stringLength - count
        
        return self.substringToIndex(advance(self.startIndex, substringIndex))
    }
    
    
    func length() -> Int {
        return countElements(self)
    }
        
}


