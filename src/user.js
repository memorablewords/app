export const validUser = (user) => {
  return !!user && !!user.username && user.attribution !== undefined;
};
