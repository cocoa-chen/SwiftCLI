//
//  HelpCommand.swift
//  SwiftCLI
//
//  Created by Jake Heiser on 7/25/14.
//  Copyright (c) 2014 jakeheis. All rights reserved.
//

public class HelpCommand: OptionCommand {
    
    internal(set) var allCommands: [Command] = []
    
    public let name = "help"
    public let signature = "[<opt>]"
    public let shortDescription = "Prints this help information"
    public let shortcut = "-h"
    
    public let failOnUnrecognizedOptions = false
    public let unrecognizedOptionsPrintingBehavior = UnrecognizedOptionsPrintingBehavior.PrintOnlyUnrecognizedOptions
    public let helpOnHFlag = false
    
    public func setupOptions(options: OptionRegistry) {} // Don't actually do anything with any options
    
    public func execute(arguments: CommandArguments) throws {
        if arguments.optionalArgument("opt") != nil {
            print("Usage: baker help\n")
        }
        
        print("\(CLI.description)\n")
        print("Available commands: ")

        for command in allCommands {
            printCommand(command: command)
        }
        
        printCommand(command: self)
    }
    
    func printCommand(command: Command) {
        let description = command.shortDescription.padFront(totalLength: 20 - command.name.characters.count)
        print("- \(command.name)\(description)")
    }
    
}