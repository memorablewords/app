<script>
  export let word;

  let three = word.length == 3;
  let four = word.length == 4;
  let five = word.length == 5;
  let six = word.length == 6;
  let seven = word.length == 7;
  let eight = word.length == 8;
  let nine = word.length == 9;
  let ten = word.length == 10;
  let eleven = word.length == 11;
  let twelve = word.length >= 12;
</script>

<style>
  span {
    line-height: 1;
    padding-bottom: 2rem;
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
