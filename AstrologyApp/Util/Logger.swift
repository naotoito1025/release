//
//  Logger.swift
//  AstrologyApp
//
//  Created by 伊藤　直人 on 2020/12/15.
//

import Foundation

/// ログ出力クラス
public struct Logger {
    
    /// 日時
    private static var dateString: String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        return formatter.string(from: date)
    }
    
    /// ログレベル
    public enum LogLevel: String {
        case call
        case debug
        case error
    }
    
    /// 関数に入った際のログ出力
    public static func call(file: String = #file, function: String = #function, line: Int = #line) {
        #if DEBUG
            print("\(dateString) [\(LogLevel.call.rawValue.uppercased())] \(className(from: file)).\(function) \(line)s")
        #endif
    }
    
    /// ファイル名からクラス名を取得
    private static func className(from filePath: String) -> String {
        let fileName = filePath.components(separatedBy: "/").last
        return fileName?.components(separatedBy: ".").first ?? ""
    }
    
    /// コンソールにログを出力する
    private static func printToConsole(logLevel: LogLevel, file: String, function: String, line: Int, message: String) {
        #if DEBUG
        print("\(dateString) [\(logLevel.rawValue.uppercased()) \(className(from: file)).\(function) #\(line): \(message)]")
        #endif
    }
}
