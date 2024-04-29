function Get-Zeros {
    # Prompt the user to enter numbers separated by spaces or commas
    $userInput = Read-Host "Enter a series of numbers separated by spaces or commas"

    # Replace commas with spaces and split the string into an array
    $numberStrings = $userInput -replace ',', ' ' -split ' +' 

    # Convert the array of number strings to an array of integers
    $numbers = $numberStrings | ForEach-Object {
        try {
            [int]$_  # Convert to integer
        }
        catch {
            Write-Warning "Invalid input: $_ is not a number."
            continue
        }
    }
    
    if ($numbers){
    #Using a nested loop ensuring that it calculates each number with each: 
    foreach ($num1 in $numbers) {
    foreach ($num2 in $numbers) {
        $sum = $num1 + $num2
        if ($sum -eq 0) {
        #Print the result if equal to "0"
        Write-Output "$num1 + $num2 = $sum"
         }
    }
}
}
}

