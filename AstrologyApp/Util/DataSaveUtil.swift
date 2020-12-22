//
//  DataSaveUtil.swift
//  AstrologyApp
//
//  Created by 伊藤　直人 on 2020/12/22.
//

import UIKit

/// ローカルデータを操作するクラス
class DataSaveUtil {

    //MARK: - ユーザー名操作
    
    /// ユーザーネーム取得
    /// - Returns: ユーザー名
    class func getUserName() -> String {
        Logger.call()
        return UserDefaults.standard.string(forKey: "username") ?? ""
    }
    
    /// ユーザーネーム登録
    /// - Parameter name: ユーザー名
    class func setUserName(name: String) {
        Logger.call()
        UserDefaults.standard.set(name, forKey: "username")
    }
    
    //MARK: - 生年月日操作
    
    /// 生年月日の取得（yyyyMMdd）
    class func getBirthday() -> String {
        Logger.call()
        return UserDefaults.standard.string(forKey: "birthday") ?? ""
    }
    
    /// 生年月日を設定（yyyyMMdd）
    /// - Parameter birthday: 生年月日
    class func setBirthday(birthday: String) {
        Logger.call()
        UserDefaults.standard.set(birthday, forKey: "birthday")
    }
    
    //MARK: - 性別の操作
    
    /// 性別を取得（0:男, 1:女）
    class func getGender() -> Int {
        Logger.call()
        return UserDefaults.standard.integer(forKey: "gender")
    }
    
    /// 性別の設定（0:男, 1:女）
    /// - Parameter gender: 性別
    class func setGender(gender: Int) {
        Logger.call()
        UserDefaults.standard.set(gender, forKey: "gender")
    }
    
    //MARK: - 占い日の操作
    
    /// 最終占い日取得（yyyyMMdd）
    /// - Returns: 登録日
    class func getFortunetellingDay() -> String {
        Logger.call()
        return UserDefaults.standard.string(forKey: "fortunetelling_day") ?? ""
    }
    
    /// 最終占い日登録（yyyyMMdd）
    /// - Parameter day: 登録日
    class func setFortunetellingDay(day: String) {
        Logger.call()
        UserDefaults.standard.set(day, forKey: "fortunetelling_day")
    }
}
