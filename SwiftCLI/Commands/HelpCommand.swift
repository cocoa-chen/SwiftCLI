//
//  HelpCommand.swift
//  SwiftCLI
//
//  Created by Jake Heiser on 7/25/14.
//  Copyright (c) 2014 jakeheis. All rights reserved.
//

import Foundation

class HelpCommand: Command {
    
    var allCommands: [Command] = []
    
    override class var command: HelpCommand {
        return HelpCommand()
    }
    
    override var commandName: String  {
        return "help"
    }
    
    override func handleOptions() -> Bool  {
        self.options.handleAll()
        
        return super.handleOptions()
    }
    
    override func execute() -> (success: Bool, error: NSError?)  {
        println("Available commands: ")

        for command in self.allCommands {
            self.printCommand(command)
        }
        
        self.printCommand(self)
        
        return (true, nil)
    }
    
    func printCommand(command: Command) {
        println("- \(command.commandName) \t \(command.commandShortDescription)")
    }
    
    override var commandShortDescription: String {
        return "Prints this help information"
    }
    
}