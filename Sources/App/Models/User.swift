//
//  UserModel.swift
//  App
//
//  Created by Darius-George Oanea on 13/03/2019.
//
import Foundation
import Vapor
import FluentSQLite

final class UserModel: Codable{
    var id: UUID?
    var name: String
    var username: String
    init(name: String, username: String) {
        self.name = name;
        self.username = username;
    }
}
extension UserModel: SQLiteUUIDModel{}
extension UserModel: Content{}
extension UserModel: Migration{}
extension UserModel: Parameter{}
