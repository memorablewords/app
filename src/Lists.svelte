<script>
  import List from "./List.svelte";

  let lists = [
    {
      name: "3 letras",
      description:
        "Sustantivos de tres letras, por frequencia de uso (fuente: CORPES XXI).",
      words: [
        {
          value: "ajo",
          reviews: [
            {
              reviewer: "gonzalo-bulnes",
              decision: "yes",
              reviewedAt: "2020-08-02T09:45:00"
            }
          ]
        },
        {
          value: "pez",
          reviews: [
            {
              reviewer: "gonzalo-bulnes",
              decision: "no",
              reviewedAt: "2020-08-02T09:45:00"
            }
          ]
        },
        {
          value: "sol",
          reviews: [
            {
              reviewer: "amanda",
              decision: "no",
              reviewedAt: "2020-08-02T09:45:00"
            }
          ]
        },
        ,
        {
          value: "haz",
          reviews: []
        }
      ]
    },
    {
      name: "4 letras",
      description:
        "Sustantivos de cuatro letras, por frequencia de uso (fuente: CORPES XXI).",
      words: [
        {
          value: "tajo",
          reviews: [
            {
              reviewer: "gonzalo-bulnes",
              decision: "yes",
              reviewedAt: "2020-08-02T09:45:00"
            }
          ]
        },
        {
          value: "puro",
          reviews: [
            {
              reviewer: "gonzalo-bulnes",
              decision: "no",
              reviewedAt: "2020-08-02T09:45:00"
            }
          ]
        },
        {
          value: "jugo",
          reviews: [
            {
              reviewer: "amanda",
              decision: "no",
              reviewedAt: "2020-08-02T09:45:00"
            }
          ]
        },
        ,
        {
          value: "zumo",
          reviews: []
        }
      ]
    },
    {
      name: "5 letras",
      description:
        "Sustantivos de cinco letras, por frequencia de uso (fuente: CORPES XXI).",
      words: []
    },
    {
      name: "6 letras",
      description:
        "Sustantivos de seis letras, por frequencia de uso (fuente: CORPES XXI).",
      words: []
    },
    {
      name: "7 letras",
      description:
        "Sustantivos de siete letras, por frequencia de uso (fuente: CORPES XXI).",
      words: []
    },
    {
      name: "8 letras",
      description:
        "Sustantivos de ocho letras, por frequencia de uso (fuente: CORPES XXI).",
      words: []
    },
    {
      name: "9 letras",
      description:
        "Sustantivos de nueve letras, por frequencia de uso (fuente: CORPES XXI).",
      words: []
    },
    {
      name: "10 letras",
      description:
        "Sustantivos de diez letras, por frequencia de uso (fuente: CORPES XXI).",
      words: []
    },
    {
      name: "11 letras",
      description:
        "Sustantivos de once letras, por frequencia de uso (fuente: CORPES XXI).",
      words: []
    }
  ];
</script>

<style>
  ul {
    list-style: none;
    padding: 0;
    margin: 0;
    width: 100%;
  }
  p {
    padding: 1.5rem 0 0;
    margin: 0;
    width: 100%;
  }

  .lists {
    width: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
  }
</style>

<div class="lists">
  {#if lists.length === 0}
    <p>There are no words to review at the moment.</p>
    <p>
      However, when new lists of words become available for review, they will
      appear here.
    </p>
    <p>Please check again later!</p>
  {:else}
    <ul>
      {#each lists as list, i}
        <li>
          <List {list} />
        </li>
      {/each}
    </ul>
  {/if}
</div>
