const fs = require('fs');

// Read input arguments passed from Terraform via stdin
const input = fs.readFileSync(0, 'utf-8');
const query = input ? JSON.parse(input) : {};

// Perform your logic (e.g., fetch API tokens, read files, etc.)
const result = {
  token: "secret-token-12345",
  env: query.environment || "default"
};

// Terraform expects a JSON string printed directly to stdout
console.log(JSON.stringify(result));
