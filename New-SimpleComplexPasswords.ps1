
function New-SimpleComplexPasswords {

    $Today = (get-date -Format "yyyy-MM-dd")
    $Symbols = '!#$%^&*'
    $Verbs = @(
        'Ask','Be','Become','Begin','Believe','Bring','Buy','Call','Can','Choose',
        'Come','Cost','Drive','Fall','Feel','Find','Fly','Get','Give','Go','Grow',
        'Have','Hear','Help','Keep','Know','Learn','Let','Like','Live','Look',
        'Make','Mean','Meet','Move','Need','Play','Put','Read','Run','Say','See',
        'Seem','Show','Sit','Speak','Stand','Start','Take','Talk','Tell','Think',
        'Time','Try','Turn','Use','Want','Way','Work','Year'
    )
    $Colors = @(
        'Black','Blue','Brown','Gold','Green','Red','White'
    )
    $Nouns = @(
        'Area','Book','Case','Cat','City','Cow','Day','Dog','Eye','Fact','Game',
        'Health','Home','Hour','Life','Line','Place','Point','Pony','Room','School',
        'Service','Side','State','Story','Student','Thing','Water','Week','Work',
        'World'
    )
    $Number = ((get-random 99) + 1)

    # example symbol,verb,color,noub,number
    $Symbols[(get-random $Symbols.length)] `
        + $Verbs[(get-random $Verbs.length)] `
        + $Colors[(get-random $Colors.length)] `
        + $Nouns[(get-random $Nouns.length)] `
        + $Number

    # example Today,symbol,verb,noub,number
    $Today `
        + $Symbols[(get-random $Symbols.length)] `
        + $verbs[(get-random $verbs.length)] `
        + $Nouns[(get-random $Nouns.length)] `
        + $Number
}