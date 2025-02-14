[//]: # (This is Sam Troper's markdown template.                        )
[//]: # (These initial lines are comments containing formatting tips.   )
[//]: # (Headings:                                                      )
[//]: # (  # H1                                                         )
[//]: # (  ## H2                                                        )
[//]: # (  ### H3                                                       )
[//]: # (  ...                                                          )
[//]: # (Text formatting:                                               )
[//]: # (  **bold**                                                     )
[//]: # (  *italic*                                                     )
[//]: # (  ***bold italic***                                            )
[//]: # (  ~~strike-through~~                                           )
[//]: # (Lists:                                                         )
[//]: # (  1. Ordered                                                   )
[//]: # (  2. lists                                                     )
[//]: # (  - Unordered                                                  )
[//]: # (  - lists                                                      )
[//]: # (Links:                                                         )
[//]: # (  <URL.com>                                                    )
[//]: # (  [Inline][l-parentheses]link[r-parentheses]                   )
[//]: # (  [Inline][l-parentheses]link "Title"[r-parentheses]           )
[//]: # (  [Relative][l-parentheses]../link[r-parentheses]              )
[//]: # (  [Reference][l-parentheses]r-link[r-parentheses]              )
[//]: # (  [r-link]: link                                               )
[//]: # (  [r-link alt]                                                 )
[//]: # (  [r-link alt]: link                                           )
[//]: # (Images:                                                        )
[//]: # (  ![Display text][link]                                        )
[//]: # (  ![Display text][r-link]                                      )
[//]: # (  [r-link]: link                                               )
[//]: # (Code:                                                          )
[//]: # (  `inline code`                                                )
[//]: # (  ```Language                                                  )
[//]: # (  Code                                                         )
[//]: # (  block                                                        )
[//]: # (  ```                                                          )
[//]: # (Tables:                                                        )
[//]: # (  | C1 | ... | CX |                                            )
[//]: # (  |----|-----|----|                                            )
[//]: # (  | B1 | ... | BX |                                            )
[//]: # (  |....|.....|....|                                            )
[//]: # (  | B1N|.....| BXN|                                            )
[//]: # (Quotes:                                                        )
[//]: # (  > Quote line one                                             )
[//]: # (  > Line two                                                   )
[//]: # (  > This line will wrap properly... No really... It will. Trust me... It will autowrap at the end of the page... Just wait and see...)
[//]: # (HTML:                                                          )
[//]: # (You can just use HTML!                                         )
[//]: # (Horizontal break:                                              )
[//]: # (  ---                                                          )
[//]: # (That's it!                                                     )

This document outlines current thoughts, notes, and todos related to the Gutenberg files for Project-Eden

- Identify what files should be kept for Project-Eden
  - Simplest complete format should be kept
    - E.g. .txt for books, .mp3 for music, .??? for books with images
    - Current thoughts - use the HTML version
      - This would preserve images and other formatting
      - What does this entail?
        - Two approaches:
          - Zip the HTML plus referenced files
          - Convert the HTML to be more IPFS compatible
            - This would strip hard links to the images and other non-html files and would instead insert an IPFS reference to them
            - Good test case for IPFS html
  - TODO: List all file types kept in project Gutenberg
- Strip headers, compress, and prep as an ipfs document, to be distributed seperately from the books themselves to save space

Current format thoughts: Modify metadata files to include IPFS hash of zipped item - link metadata in C.N., and add metadata parsing HTML to C.N. as default processor
