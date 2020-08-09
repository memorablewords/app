const { validUser } = require("./user");

let testcases = [
  {
    description: "username and attribution present",
    user: {
      username: "cat",
      attribution: "dog",
    },
    expected: true,
  },
  {
    description: "missing user",
    user: undefined,
    expected: false,
  },
  {
    description: "empty username",
    user: {
      username: "",
      attribution: undefined,
    },
    expected: false,
  },
  {
    description: "attribution missing",

    user: {
      username: "cat",
      attribution: undefined,
    },
    expected: false,
  },
  {
    description: "username present, empty attribution",

    user: {
      username: "cat",
      attribution: "",
    },
    expected: true,
  },
];

testcases.forEach((tc) => {
  test(tc.description, () => {
    expect(validUser(tc.user)).toBe(tc.expected);
  });
});
