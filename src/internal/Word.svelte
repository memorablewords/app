<script>
  export let word;
  word = word || "?";
  let three = word && word.length <= 3;
  let four = word && word.length == 4;
  let five = word && word.length == 5;
  let six = word && word.length == 6;
  let seven = word && word.length == 7;
  let eight = word && word.length == 8;
  let nine = word && word.length == 9;
  let ten = word && word.length == 10;
  let eleven = word && word.length == 11;
  let twelve = word && word.length >= 12;
</script>

<style>
  span {
    line-height: 1;
    padding-bottom: 2rem;
    font-family: -apple-system, BlinkMacSystemFont, San Francisco, Segoe UI,
      Roboto, Helvetica Neue, sans-serif;
  }
  .three {
    font-size: 6.5rem;
  }
  .four {
    font-size: 5.5rem;
  }
  .five {
    font-size: 5rem;
  }
  .six {
    font-size: 4.5rem;
  }
  .seven {
    font-size: 4rem;
  }
  .eight,
  .nine {
    font-size: 3.5rem;
  }
  .ten,
  .eleven,
  .twelve {
    font-size: 3rem;
  }
</style>

<span
  class:three
  class:four
  class:five
  class:six
  class:seven
  class:eight
  class:nine
  class:ten
  class:eleven
  class:twelve>
  {word}
</span>
