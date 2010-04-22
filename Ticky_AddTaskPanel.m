//
//  Ticky_AddTaskPanel.m
//  Ticky
//
//  Created by Thomas PELLETIER on 22/04/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Ticky_AddTaskPanel.h"


@implementation Ticky_AddTaskPanel

@synthesize taskField;

- (IBAction)registerNewTask:(id)sender {
	NSString *newtaskContent = [taskField stringValue];
	[taskField setStringValue:@""];
	NSManagedObject *newTask = [NSEntityDescription insertNewObjectForEntityForName:@"Task" inManagedObjectContext:[[NSApp delegate] managedObjectContext]];
	[newTask setValue:newtaskContent forKey:@"Content"];
	[newTask setValue:NO forKey:@"Done"];
	[self orderOut:self];
	[[NSApp delegate] updateBadge];
}

@end
