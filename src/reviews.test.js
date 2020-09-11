import merge from "deepmerge";

const defaultList = {
  id: 1,
  words: {
    abanico: {
      reviews: {
        "24ee2ce0-2ac2-4d90-82c7-cf2ebadc3eb2": {
          reviewer: "a",
          decision: "da",
          status: "pending",
        },
        "bf48de8c-3870-4a9a-a37e-f6b325b8b019": {
          reviewer: "b",
          decision: "db",
          status: "pending",
        },
      },
    },
    bulto: {
      reviews: null,
    },
  },
};

let testcases = [
  {
    description: "loads upstream list when there is no local list",
    upstream: defaultList,
    local: {},
    expected: defaultList,
  },
  {
    description: "appends upstream words when they are not present locally",
    upstream: defaultList,
    local: {
      id: 1,
      words: {
        carta: {
          reviews: {
            "c91ab84b-5d1b-4aed-824f-c41e914e4bc3": {
              reviewer: "a",
              decision: "da",
              status: "pending",
            },
          },
        },
      },
    },
    expected: {
      id: 1,
      words: {
        abanico: {
          reviews: {
            "24ee2ce0-2ac2-4d90-82c7-cf2ebadc3eb2": {
              reviewer: "a",
              decision: "da",
              status: "pending",
            },
            "bf48de8c-3870-4a9a-a37e-f6b325b8b019": {
              reviewer: "b",
              decision: "db",
              status: "pending",
            },
          },
        },
        bulto: {
          reviews: null,
        },
        carta: {
          reviews: {
            "c91ab84b-5d1b-4aed-824f-c41e914e4bc3": {
              reviewer: "a",
              decision: "da",
              status: "pending",
            },
          },
        },
      },
    },
  },
  {
    description: "doesn't duplicate words that are already present locally",
    upstream: defaultList,
    local: {
      id: 1,
      words: {
        abanico: {
          reviews: {
            "24ee2ce0-2ac2-4d90-82c7-cf2ebadc3eb2": {
              reviewer: "a",
              decision: "da",
              status: "pending",
            },
            "bf48de8c-3870-4a9a-a37e-f6b325b8b019": {
              reviewer: "b",
              decision: "db",
              status: "pending",
            },
          },
        },
      },
    },
    expected: defaultList,
  },
  {
    description: "includes all reviews whether upstream or local",
    upstream: {
      id: 1,
      words: {
        abanico: {
          reviews: {
            "24ee2ce0-2ac2-4d90-82c7-cf2ebadc3eb2": {
              reviewer: "a",
              decision: "da",
              status: "pending",
            },
            "bf48de8c-3870-4a9a-a37e-f6b325b8b019": {
              reviewer: "b",
              decision: "db",
              status: "pending",
            },
          },
        },
      },
    },
    local: {
      id: 1,
      words: {
        abanico: {
          reviews: {
            "c91ab84b-5d1b-4aed-824f-c41e914e4bc3": {
              reviewer: "c",
              decision: "dc",
              status: "pending",
            },
          },
        },
      },
    },
    expected: {
      id: 1,
      words: {
        abanico: {
          reviews: {
            "c91ab84b-5d1b-4aed-824f-c41e914e4bc3": {
              reviewer: "c",
              decision: "dc",
              status: "pending",
            },
            "24ee2ce0-2ac2-4d90-82c7-cf2ebadc3eb2": {
              reviewer: "a",
              decision: "da",
              status: "pending",
            },
            "bf48de8c-3870-4a9a-a37e-f6b325b8b019": {
              reviewer: "b",
              decision: "db",
              status: "pending",
            },
          },
        },
      },
    },
  },
];

testcases.forEach((tc) => {
  test(tc.description, () => {
    expect(merge(tc.upstream, tc.local)).toStrictEqual(tc.expected);
  });
});
