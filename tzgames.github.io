<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Guess the Number</title>
<style>
    body {
        font-family: Arial, sans-serif;
        text-align: center;
    }
    h1, label, #result {
        font-weight: bold;
    }
    #result {
        margin-top: 20px;
        font-size: 1.5em;
    }
</style>
</head>
<body>
    <h1>Guess the Number</h1>
    <label for="guess">Enter your guess (between 1 and 100): </label>
    <input type="number" id="guess" min="1" max="100">
    <button onclick="checkGuess()">Submit</button>
    <div id="result"></div>

    <script>
        const randomNumber = Math.floor(Math.random() * 100) + 1;
        let attempts = 0;

        function checkGuess() {
            const guess = parseInt(document.getElementById('guess').value);
            const resultElement = document.getElementById('result');

            if (isNaN(guess) || guess < 1 || guess > 100) {
                resultElement.textContent = 'Please enter a valid number between 1 and 100.';
                return;
            }

            attempts++;

            if (guess === randomNumber) {
                resultElement.textContent = `Congratulations! You guessed the number ${randomNumber} in ${attempts} attempts.`;
            } else if (guess < randomNumber) {
                resultElement.textContent = 'Too low. Try again.';
            } else {
                resultElement.textContent = 'Too high. Try again.';
            }
        }
    </script>
</body>
</html>
