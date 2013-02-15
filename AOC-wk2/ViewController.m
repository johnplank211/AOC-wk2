//
//  ViewController.m
//  AOC-wk2
//
//  Created by john plank on 2/14/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	
    
    // --AOC-wk2-- //

    self.view.backgroundColor = [UIColor blackColor];
    
    // ---------- BOOK INFORMATION & UILabels ----------
    
    
    // Create a UILabel and place it at the top of the view.
    // This is used as the title of the book.
    // Center the text for this label
    
    
    UILabel *booktitle = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 20.0f)];
   
        if (booktitle != nil)
            {
                booktitle.backgroundColor = [UIColor grayColor];
                booktitle.text = @"Dreamcatcher";
                booktitle.textAlignment = NSTextAlignmentCenter;
                booktitle.textColor = [UIColor whiteColor];
            }
    
    
    // Create another label that contains the text "Author:"
    // This text is right justified.
    
    UILabel *author = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 36.0f, 150.0f, 20.0f)];
    
        if (author != nil);
            {
                author.backgroundColor = [UIColor brownColor];
                author.text = @"Author:";
                author.textColor = [UIColor blueColor];
                author.textAlignment = NSTextAlignmentRight;
            }
    
    
    // Create UILabel on the right of the author title label
    // and have it contain the name of the author of the book you chose.
    // This text will be left justified.
    
    UILabel *authorofbook = [[UILabel alloc] initWithFrame:CGRectMake(160.0f, 36.0f, 150.0f, 20.0f)];
    
        if (authorofbook != nil);
            {
                authorofbook.backgroundColor = [UIColor blueColor];
                authorofbook.text = @"Stephen King";
                authorofbook.textAlignment = NSTextAlignmentLeft;
                authorofbook.textColor = [UIColor orangeColor];
            }
    
    
    // Create a UILabel on the next line called "Published:".
    // This text is right justified.
    
    UILabel *published = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 62.0f, 150.0f, 20.0f)];
    
        if (published != nil);
            {
                published.backgroundColor = [UIColor redColor];
                published.text = @"Published:";
                published.textColor = [UIColor  darkGrayColor];
                published.textAlignment = NSTextAlignmentRight;
            }
    
    // Create a label next to the Published label and add the text of when the book was published.
    // This text is left justified.
    
    UILabel *publishdate = [[UILabel alloc] initWithFrame:CGRectMake(160.0f, 62.0f, 150.0f, 20.0f)];
        if (publishdate != nil);
            {
                publishdate.backgroundColor = [UIColor greenColor];
                publishdate.text = @"March 2001";
                publishdate.textAlignment = NSTextAlignmentLeft;
                publishdate.textColor = [UIColor purpleColor];
            }
    
    
    // Create a UILabel with the text "Summary:".
    // This text is left justified.
    
    UILabel *summary = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 88.0f, 150.0f, 20.0f)];
    
        if (summary != nil);
            {
                summary.backgroundColor = [UIColor orangeColor];
                summary.text = @"Summary:";
                summary.textColor = [UIColor blueColor];
                summary.textAlignment = NSTextAlignmentLeft;
            }
    
    
    // Create another UILabel that contains a small summary of the book's plot.
    // This text is centerd and should span multiple lines.
   
    UILabel *booksummary = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 114.0f, 300.0f, 269.0f)];
    
        if (booksummary != nil);
            {
                booksummary.backgroundColor = [UIColor cyanColor];
                booksummary.text = @"Dreamcatcher is about four friends who go up to a cabin in the mountains for their annual hunting trip. When they were younger the four of them came to the rescue of a special needs young boy. Since that time the four have developed special powers, and they don't know why. On their hunting trip a stranger comes knocking at their door confused and rambling. He's looks very sick and is talking about seeing light in the sky, it's obvious he delusional. That was the last night their ever together.  ";
                booksummary.textAlignment = NSTextAlignmentCenter;
                booksummary.numberOfLines = 13;
            }
    
    // ---------- LABELS and ARRAYS ----------
    
    // Create an NSArray of 5 items talked about in the book. These items will be NSStrings.
    
    NSMutableArray *listOfCharacters = [[NSMutableArray alloc] initWithCapacity:5];
        [listOfCharacters addObject:@"Henry"];
        [listOfCharacters addObject:@"Beaver"];
        [listOfCharacters addObject:@"Jonesy"];
        [listOfCharacters addObject:@"Pete"];
        [listOfCharacters addObject:@"and Duddits"];
    
    
    // Create a variable of type NSMutableString and allocate it.
    // Loop through the NSArray you created and append each of these items to your NSMutableString seperated by commas.
    // Example: dinosaurs, jeeps, storm, giant turkeys, and eating people
    
    UILabel *listed = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 388.0f, 96.0f, 20.0f)]; // List of Items added to the parent view.
    NSMutableString *stringMute = [NSMutableString string];
    
        for (int i=0; i<5; i++)
        {
            [stringMute appendString:[listOfCharacters objectAtIndex:i]];
        
            if (i<4)
            {
            [stringMute appendString:@", "]; //puts commas between names.
            }
        }
    
    
    // Create a label with the text "List of items" and add it to the parent view.
    // Make sure the text is left justified.
    
        if (listed != nil);
        {
            listed.backgroundColor = [UIColor purpleColor];
            listed.text = @"List of items:";
            listed.textColor = [UIColor whiteColor];
            listed.textAlignment = NSTextAlignmentLeft;
        }
    
    // Create another label beneath and set the text to the NSMutableString text.
    // Increase the number of lines if necessary.
    // Make sure the text in this label is centered.
    
    UILabel *listLoaded = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 413.0f, 300.0f, 38.0f)];
    
        if (listLoaded != nil);
        {
            listLoaded.backgroundColor = [UIColor whiteColor];
            listLoaded.text = stringMute;
            listLoaded.textAlignment = NSTextAlignmentCenter;
            listLoaded.numberOfLines = 2;
        
        }
    
    // ---------- Subview List ----------
    
    [self.view addSubview:booktitle];
    [self.view addSubview:author];
    [self.view addSubview:authorofbook];
    [self.view addSubview:published];
    [self.view addSubview:publishdate];
    [self.view addSubview:summary];
    [self.view addSubview:booksummary];
    [self.view addSubview:listed];
    [self.view addSubview:listLoaded];
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end