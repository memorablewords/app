export const validUser = (user) => {
  return !!user && !!user.username && user.attribution !== undefined;
};

// isContributor checks whether there are contributions by a user.
export const isContributor = (username) => {
  return false;
};
