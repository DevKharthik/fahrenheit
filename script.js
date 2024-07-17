function convert() {
    const fahrenheit = document.getElementById('fahrenheit').value;
    if (fahrenheit === "") {
        alert("Please enter a value");
        return;
    }
    const celsius = (fahrenheit - 32) * 5 / 9;
    document.getElementById('result').textContent = `${fahrenheit}°F is ${celsius.toFixed(2)}°C`;
}
