//
//  Logger.swift
//  SmartYard
//
//  Created by Александр Попов on 24.12.2024.
//  Copyright © 2024 LanTa. All rights reserved.
//

import Foundation

enum Logger {
    
    /// Логирует информационные сообщения для отслеживания выполнения программы.
    static func logInfo(_ message: String) {
        print("[INFO] \(Logger.timestamp()) \(message)")
    }

    /// Логирует отладочные сообщения для диагностики и детального анализа.
    static func logDebug(_ message: String) {
        print("[DEBUG] \(Logger.timestamp()) \(message)")
    }

    /// Логирует предупреждения о потенциальных проблемах.
    static func logWarning(_ message: String) {
        print("[WARNING] \(Logger.timestamp()) \(message)")
    }

    /// Логирует ошибки, которые требуют внимания, но не критичны.
    static func logError(_ message: String) {
        print("[ERROR] \(Logger.timestamp()) \(message)")
    }

    /// Логирует критические ошибки, из-за которых программа может не продолжить работу.
    static func logCritical(_ message: String) {
        print("[CRITICAL] \(Logger.timestamp()) \(message)")
    }

    /// Логирует успешное выполнение ключевых операций.
    static func logSuccess(_ message: String) {
        print("[SUCCESS] \(Logger.timestamp()) \(message)")
    }

    private static func timestamp() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
        return formatter.string(from: Date())
    }
    
}
